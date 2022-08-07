class RegistrationsController < Devise::RegistrationsController
  include RackSessionFix
  respond_to :json

  def create
    interact = Registration.call(data: params)

    if interact.success?
      super
      @user = User.where(id: current_user.id).first
    else
      render json: { error: interact.error }, status: 422
    end
  end

  private

  # def authorization
  #   interact = Authorization.call(headers: request.headers)
  #   interact.result&.name
  #
  #   render json: { error: { token: interact.error } }, status: :unauthorized unless interact.success?
  # end

  def respond_with(resource, _opts = {})
    register_success && return if resource.persisted?

    register_failed
  end

  def register_success
    render json: { message: 'Success' }, status: :ok
  end

  def register_failed
    render json: { error: [user: 'Something went wrong.'] }
  end

  # def decoded_auth_token
  #   @decoded_auth_token ||= JsonWebToken.decode(http_auth_header)
  # end

  # def http_auth_header
  #   return request.headers['Authorization'].split(' ').last if request.headers['Authorization'].present?
  #
  #   nil
  # end

  # def setup_user
  #   setup_account = RegistrationService.new(@user).call
  #
  #   if setup_account
  #     sms_message = "Rento: Your security code is: #{@user.otp}. It expires in 10 minutes. Dont share this code with anyone."
  #     send_sms("+#{@user.ref_mobile_country_code.value_str}#{@user.mobile}", sms_message, 'Rento')
  #   end
  # end
end