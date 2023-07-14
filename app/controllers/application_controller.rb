class ApplicationController < ActionController::Base
  private

  helper_method :current_user
  helper_method :current_user?
  helper_method :require_correct_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_user?(user)
    user == current_user
  end

  def require_signin
    return if current_user

    session[:intended_path] = request.url
    redirect_to new_session_url, notice: 'Please signin'
  end

  def require_correct_user
    @user = User.find(params[:id])
    redirect_to root_url, status: :see_other unless current_user?(@user)
  end
end
