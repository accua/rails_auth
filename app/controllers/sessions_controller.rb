class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.authenticate(params[:email], params[:password])
    if @user
      flash[:notice] = 'You are successfully logged in!'
      session[:user_id] = @user.id
      redirect_to posts_path
    else
      flash[:alert] = 'Your email or password is incorrect'
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = 'You have been logged out successfully.'
    redirect_to posts_path
  end
end
