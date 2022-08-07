class Api::V1::UsersController < ApplicationController
  # GET /api/v1/users
  def index
    @users = User.all
  end
end
