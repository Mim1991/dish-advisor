class Dish < ApplicationRecord
  belongs_to :restaurant
  has_many :reviews, dependent: :destroy
  has_many :favourites, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :search_by_name_description_allergen,
  against:
  [:name, :description, :allergen],
  using: {
    tsearch:{
      prefix: true }
  }

  multisearchable against: [:name, :description, :allergen]
  # pg_search_scope :search_by_restaurant_dish,
  #   against: [:name, :description, :allergen],
  # associated_against: { restaurant:
  #   [:name, :cuisine, :address]},
  #   using: {
  #     tsearch:{
  #       prefix: true }
  # }

  def critic_choice
    critic_rev = reviews.select do |review|
      review.user.critic == true && review.rating == 5
    end
  end

  def review_count
    most_reviews = reviews.pluck(:rating).length
  end

  def average_review
    selected_reviews = reviews.where.not(rating: nil)
    return 0 unless selected_reviews.present?

    selected_reviews.pluck(:rating).sum / selected_reviews.pluck(:rating).length.to_f
  end
end
