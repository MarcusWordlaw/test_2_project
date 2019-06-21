class Property < ApplicationRecord
  belongs_to :client
  has_many :services
  has_many :employees, through: :services


end
