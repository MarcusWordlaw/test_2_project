class PropertiesController < ApplicationController

  def index
    @properties = Property.all

  end

  def show
    @property = Property.where(client_id: params[:id])
  end

  def new
    @property = Property.new
  end

  def create

    #Client is not saving to database can check with byebuy
    # property.errors.full_messages
    @property = Property.new(property_params)
    @property.save
    redirect_to property_path(@property.id)
  end

  def edit
    @property = Property.find(params[:id])
  end


  def update
    @property = Property.find(params[:id])
    @property.update(property_params)
    redirect_to client_path(@property.client)
  end

  def destroy
    @property = Property.find(params[:id])
    @property.destroy
    redirect_to properties_path
  end

  private

  def property_params
    params.require(:property).permit(:name, :address, :zip_code, :pool_size, :pool_material, :pool_cover, :client_id)
  end
end
