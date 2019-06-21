class SessionsController < ApplicationController
  def new
  end

  def login
    @client = Client.find_by(username: params[:username])

    if @client
      session[:user_id] = @client.id
      redirect_to client_path(@client.id)
    else
      flash["notice"] = "User not found"
      render :new
    end
  end



  def destroy
    session.clear
    redirect_to root_path
  end
end
