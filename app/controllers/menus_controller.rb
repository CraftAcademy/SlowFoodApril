class MenusController < ApplicationController
  def index
    @menus = Menu.where(restaurant_id: params[:restaurant_id])
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
