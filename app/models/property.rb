class Property < ApplicationRecord
  has_many :services
  belongs_to :client
  has_many :employees, through: :services

  
end
