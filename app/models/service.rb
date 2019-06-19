class Service < ApplicationRecord
  belongs_to :employee
  belongs_to :property
  has_many :clients, through: :properties
end
