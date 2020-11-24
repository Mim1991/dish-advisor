class RestaurantsController < ApplicationController
  def index
    Restaurant.all = @Restaurants
  end
end
