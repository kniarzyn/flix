class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by('lower(email) = ?', params[:email].downcase)
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user, notice: "Welcome back, #{user.name}!"
    else
      flash.now[:alert] = 'Invalid email/password combination!'
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to users_url, notice: 'You are signed out!', status: :see_other
  end
end
