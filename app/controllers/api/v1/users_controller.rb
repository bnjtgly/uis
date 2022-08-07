# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      # GET /api/v1/users
      def index
        @users = UserDecorator.decorate_collection(User.all)
      end
    end
  end
end
