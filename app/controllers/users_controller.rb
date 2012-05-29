class UsersController < ApplicationController
  def index
    #Show all Users
    @users = User.all(limit: 5).order_by([:created_at, :desc])
  end
end
