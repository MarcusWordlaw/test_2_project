class Employee < ApplicationRecord
  has_many :services
  has_many :properties, through: :services
end
