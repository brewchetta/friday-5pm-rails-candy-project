class UsersController < ApplicationController

  # show new user form
  def new
    @user = User.new
  end

  # create the user
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :picture_url)
  end

end
