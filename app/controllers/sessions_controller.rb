class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by('lower(email) = ?', params[:email].downcase)
    if user&.authenticate(params[:password])
      redirect_to (session[:intended_path] || user), notice: "Welcome back, #{user.name}!"
      session_init(user)
    else
      flash.now[:alert] = 'Invalid email/password combination!'
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to users_url, notice: 'You are signed out!', status: :see_other
  end

  private

  def session_init(user)
    session[:intended_path] = nil
    session[:user_id] = user.id
  end
end
