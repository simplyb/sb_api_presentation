class UsersController < ApplicationController
  
  respond_to :json

  def index
    #Show all Users
    @users = User.all(limit: 5).order_by([:created_at, :desc])
    respond_with(@users)
  end
end
