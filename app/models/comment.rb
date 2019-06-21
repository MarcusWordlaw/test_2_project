class Comment < ApplicationRecord
  belongs_to :service 
  belongs_to :client
end
