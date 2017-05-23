class RestaurantsController < ApplicationController
  def index
    if params[:category].present? == true
      cat_chosen = params[:category][:id]
      @restaurants = Restaurant.where(rest_category_id: cat_chosen)
    else
      @restaurants = Restaurant.all
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
end
