class Restaurant < ApplicationRecord
  has_many :dishes

  include PgSearch::Model
  pg_search_scope :search_by_name_cuisine_address,
  against: [:name, :cuisine, :address],
  using: {
    tsearch: {
      prefix: true } }

  # pg_search_scope :search_by_restaurant_dish,
  #   against: [:name, :cuisine, :address],
  # associated_against: { dish:
  #   [:name, :description, :allergen]},
  #   using: {
  #     tsearch:{
  #       prefix: true }
  # }
end
