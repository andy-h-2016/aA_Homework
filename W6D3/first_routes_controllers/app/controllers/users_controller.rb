class UsersController < ApplicationController
  def index
    all_users = User.all
    render json: all_users
  end

  def create
    user = User.create!(params.require(:user).permit(:name, :email))
    render json: user
  end

  def show
    render json: params
  end
end