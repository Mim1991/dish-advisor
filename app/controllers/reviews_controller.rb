class ReviewsController < ApplicationController
  before_action :find_dish, only: [:new, :create]

  def index
    @user = User.find(params[:user_id])
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

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to user_reviews_path(current_user)
  end

  private

  def find_dish
    @dish = Dish.find(params[:dish_id])
  end

  def review_params
    params.require(:review).permit(:title, :content, :rating, :visit_date)
  end
end

