class ApplicationController < ActionController::Base

  helper_method :get_current_client, :current_username, :logged_in?

  def get_current_client

    if @current_client
      return @current_client
    else
      @current_client = Client.find_by(id: session[:user_id])
    end
  end

  def current_username
    client = get_current_client
    if client
      return client.username
    else
      return "You are not logged in"
    end
  end

  def logged_in?
    !!get_current_client
  end

  def authorized
    redirect_to login_path unless logged_in?
  end

end
