class UsersController < ApplicationController
  def index
    #Show all Events
    @users = User.all(limit: 5).order_by([:created_at, :desc])
    render("users/index")
  end
end
