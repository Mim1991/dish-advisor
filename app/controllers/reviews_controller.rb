class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @dish = Dish.find(params[:id])
    @review = Review.new(review_params)
    if @review.save
      redirect_to dish_path(@dish)
    else
      render new
  end

  private

  def review_params
    params.require(:review).permit(:title, :content, :rating, :visit_date)
  end
end
