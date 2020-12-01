class Restaurant < ApplicationRecord
  has_many :dishes, dependent: :destroy
  has_many :reviews, through: :dishes

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_name_cuisine_address,
  against: [:name, :cuisine, :address],
  using: {
    tsearch: {
      prefix: true } }


  multisearchable against: [:name, :cuisine, :address]

  # pg_search_scope :search_by_restaurant_dish,
  #   against: [:name, :cuisine, :address],
  # associated_against: { dish:
  #   [:name, :description, :allergen]},
  #   using: {
  #     tsearch:{
  #       prefix: true }
  # }


  def most_reviewed
    dish_most_reviewed = dishes.sort_by { |dish| dish.review_count }
    dish_most_reviewed.last()
  end

  def top_review
    dish_with_reviews = dishes.select { |dish| dish.average_review.present? }

    dish_with_reviews.sort_by { |dish| dish.average_review.nil? ? 0 : -dish.average_review }
  end

end








