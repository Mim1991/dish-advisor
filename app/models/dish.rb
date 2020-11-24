class Dish < ApplicationRecord
  belongs_to :restaurant
  has_many :reviews
  has_many :favourites
end
