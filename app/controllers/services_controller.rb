class ServicesController < ApplicationController

  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
    @comments = Comment.where(service_id: @service)
    # .order("created_at DESC") <-add to the end of service
    # @comment = Comment.new
  end

  def new
    @service = Service.new
  end
  
  def create
    @service = self.new(service_params)
    @service.save
    redirect_to service_path(@service.id)
  end
  
  def edit
    @service = Service.find(params[:id])
  end
  
  
  def update
    @service = Service.find(params[:id])
    @service.update(service_params)
    redirect_to service_path(@service.id)
  end
  
  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    redirect_to service_path
  end
  
  private
  
  def service_params
    params.require(:service).permit(:property_id, :employee_id, :appointment, :service_cost, :materials_cost)
  end
end
