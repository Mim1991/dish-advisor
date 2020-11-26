class UsersController < ApplicationController
  def show
    @favourite_dishes = current_user.favourites.order(created_at: :desc).first(3)
    @user_reviews = current_user.reviews.order(created_at: :desc).first(3)
  end
end
