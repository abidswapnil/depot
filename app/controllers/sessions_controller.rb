class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      session[:email] = user.email
      redirect_to store_index_url, notice: "Logged in!"
    else
      redirect_to login_url, notice: "Invalid name/password combination!"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to store_index_url, notice: "Logged out!"
  end
end
