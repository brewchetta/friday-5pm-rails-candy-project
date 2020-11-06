module SessionsHelper

  def current_user
    @user ||= User.find_by(session[:user_id])
  end

end
