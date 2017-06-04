class Owners::RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.where(user_id: current_user.id)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @menus = Menu.where(restaurant_id: @restaurant.id)
  end
end
