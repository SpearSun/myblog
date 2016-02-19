class SessionsController < ApplicationController
  def create
    user = User.findby(name: params[:name])
    if user 
      session[:name] = user.name
      redirect_to root_path
    else
      flash.now.alert = "Invalid user name or password"
      render 'new'
    end
  end

  def destroy
    session[:name] = nil
    redirect_to root_path
  end
end
