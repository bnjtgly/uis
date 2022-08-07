module Helper
  module BasicHelper
    PASSWORD_REQUIREMENTS = 'Password should have more than 6 characters including 1 lower letter, 1 uppercase letter, 1 number and 1 symbol'.freeze
    EMAIL_EXISTS = 'Email address already exist.'.freeze
    INVALID_DOB = 'Invalid. Please change to YYYY-MM-DD.'.freeze

    def valid_date?(value)
      return true if value == 'never'

      !(value.match(/\d{4}-\d{2}-\d{2}/) && Time.zone.strptime(value, '%Y-%m-%d')).nil?
    rescue ArgumentError
      false
    end
  end
end