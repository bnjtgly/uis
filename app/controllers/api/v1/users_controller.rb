class Api::V1::UsersController < ApplicationController
  # GET /api/v1/users
  def index
    @users = UserDecorator.decorate_collection(User.all)
  end
end
