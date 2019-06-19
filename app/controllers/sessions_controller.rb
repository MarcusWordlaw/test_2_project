class SessionsController < ApplicationController
  def new
  end

  def create
    @client = Client.find_by(username: params[:username])

    if @client
      session[:user_id] = @client.id
      redirect_to properties_path
    else
      flash["notice"] = "User not found"
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end
end
