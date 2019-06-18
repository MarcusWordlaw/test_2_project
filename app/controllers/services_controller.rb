class ServicesController < ApplicationController

  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end

  # def new
  #   @service = Service.new
  # end
  #
  # def create
  #   @service = self.new(service_params)
  #   @service.save
  #   redirect_to service_path(@service.id)
  # end
  #
  # def edit
  #   @service = Services.find(params[:id])
  # end
  #
  #
  # def update
  #   @service = Services.find(params[:id])
  #   @service.update(service_params)
  #   redirect_to service_path(@service.id)
  # end
  #
  # def destroy
  #   @service = Services.find(params[:id])
  #   @service.destroy
  #   redirect_to service_path
  # end
  #
  # private
  #
  # def service_params
  #   params.require(:service).permit(:!UPDATE VARIABLES!)
  # end
end
