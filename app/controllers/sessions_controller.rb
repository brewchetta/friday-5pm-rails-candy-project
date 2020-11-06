class SessionsController < ApplicationController

  # login
  def new
    @user = User.new
  end

  # validate login
  def create
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  # logout
  def destroy
    session.clear
    redirect_to new_session_path
  end

end
