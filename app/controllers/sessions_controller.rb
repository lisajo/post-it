class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by (:username params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Welcome, you're logged in."
    else
      flash[:error] = "There is something wrong with username or password."
      redirect_to login_path
  end

  def destroy
    session[:use_id] = nil
    flash[:notice] = "You logged out."
    redirect_to root_path
  end

end