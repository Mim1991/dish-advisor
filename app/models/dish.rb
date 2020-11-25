class Dish < ApplicationRecord
  belongs_to :restaurant
  has_many :reviews
  has_many :favourites

  include PgSearch::Model
  pg_search_scope :search_by_name_description_allergen,
  against:
  [:name, :description, :allergen],
  using: {
    tsearch:{
      prefix: true }
  }

  # pg_search_scope :search_by_restaurant_dish,
  #   against: [:name, :description, :allergen],
  # associated_against: { restaurant:
  #   [:name, :cuisine, :address]},
  #   using: {
  #     tsearch:{
  #       prefix: true }
  # }
end
