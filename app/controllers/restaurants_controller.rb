class RestaurantsController < ApplicationController

  def show
    @restaurant = Restaurant.find(params[:id])
    @favourite_dishes = current_user.favourites
  end

  def index
    if params[:query1]
      @restaurants = Restaurant.search_by_name_cuisine_address(params[:query1])
    else
      @restaurants = Restaurant.all
    end
      @markers = @restaurants.geocoded.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { restaurant: restaurant }),
        image_url: helpers.asset_url('pin1 copy.png')
      }
      end
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant), notice: 'Restaurant was successfully updated.'
  end

private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :cuisine, :website, :phone_number, :photo)
  end

end
