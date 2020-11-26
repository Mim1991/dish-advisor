class ReviewsController < ApplicationController
  before_action :find_dish, only: [:new, :create]

  def index
    @reviews = Review.all
    @user_reviews = current_user.reviews.order(created_at: :asc)
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.dish = @dish
    @review.user = current_user
    if @review.save
      redirect_to restaurant_path(@dish.restaurant)
    else
      render :new
    end
  end

  private

  def find_dish
    @dish = Dish.find(params[:dish_id])
  end

  def review_params
    params.require(:review).permit(:title, :content, :rating, :visit_date)
  end
end

