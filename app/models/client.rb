class Client < ApplicationRecord
  has_many :properties
  has_many :services, through: :properties
  has_many :comments

end
