class Property < ApplicationRecord
  belongs_to :client
  has_many :services
  has_many :employees, through: :services
  # helper_method :estimate_size_cost, :estimate_material_cost, :total_cost, :grab_pool_params, :grab_pool_size
  
  
end
