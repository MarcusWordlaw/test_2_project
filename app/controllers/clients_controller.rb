class ClientsController < ApplicationController

  def index
    @clients = Client.all
  end
  #
  # def show
  #   @client = Client.find(params[:id])
  # end
  #
  # def new
  #   @client = Client.new
  # end
  #
  # def create
  #   @client = self.new(client_params)
  #   @client.save
  #   redirect_to client_path(@client.id)
  # end
  #
  # def edit
  #   @client = Client.find(params[:id])
  # end
  #
  #
  # def update
  #   @client = Client.find(params[:id])
  #   @client.update(client_params)
  #   redirect_to client_path(@client.id)
  # end
  #
  # def destroy
  #   @client = Client.find(params[:id])
  #   @client.destroy
  #   redirect_to clients_path
  # end

  # private
  #
  # def client_params
  #   params.require(:client).permit(:!UPDATE VARIABLES!)
  # end
end
