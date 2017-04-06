class Rating < ApplicationRecord
  validates_presence_of :rating, :counter
  belongs_to :restaurant
end
