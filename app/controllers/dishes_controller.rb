class DishesController < ApplicationController
before_action :find_restaurant, only: [:new, :create]

  def index
    if params[:query2]
      @dishes = Dish.search_by_name_description_allergen(params[:query2])
      # @result = PgSearch.multisearch(params[:query])
    else
      @dishes = Dish.all
    end
    @favourite_dishes = current_user.favourites
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(review_params)
    @dish.restaurant = @restaurant
    if @dish.save
      redirect_to restaurant_path(@dish.restaurant)
    else
      render :new
    end
  end

private

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:dish).permit(:name, :description)
  end

end
