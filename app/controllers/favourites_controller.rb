class FavouritesController < ApplicationController
  def index
    @favourites = Favourite.order(created_at: :asc)
  end
  def create
    @dish = Dish.find(params[:dish_id])
    @favourite = Favourite.new
    @favourite.dish = @dish
    @favourite.user = current_user
    @favourite.save
    # redirect_to restaurant_path(@dish.restaurant)
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_to restaurant_path(@dish.restaurant)
  end
end
