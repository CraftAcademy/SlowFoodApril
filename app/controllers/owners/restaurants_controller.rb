class Owners::RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.where(user_id: current_user.id)
  end

  def show
    @restaurant_id = params[:id]
  end
end
