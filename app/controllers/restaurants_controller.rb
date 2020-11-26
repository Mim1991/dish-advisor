class RestaurantsController < ApplicationController

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def index
    if params[:query]
      @restaurants = Restaurant.search_by_name_cuisine_address(params[:query])
    else
      @restaurants = Restaurant.all
    end
  end

end
