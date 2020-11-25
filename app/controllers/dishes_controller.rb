class DishesController < ApplicationController
  def index
    if params[:query]
      @dishes = Dish.search_by_name_description_allergen(params[:query])
    else
      @dishes = Dish.all
    end
  end
end
