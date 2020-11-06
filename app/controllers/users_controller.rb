class UsersController < ApplicationController

  # show new user form
  def new
    @user = User.new
  end

  # create the user
  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :picture_url)
  end

end
