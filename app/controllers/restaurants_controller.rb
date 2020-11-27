class RestaurantsController < ApplicationController

  def show
    @restaurant = Restaurant.find(params[:id])
    @favourite_dishes = current_user.favourites
  end

  def index
    if params[:query]
      @restaurants = Restaurant.search_by_name_cuisine_address(params[:query])
    else
      @restaurants = Restaurant.all
      @markers = @restaurants.geocoded.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { restaurant: restaurant }),
        image_url: helpers.asset_url('372_36_1440760950.jpg')
      }
      end
    end
  end
end
