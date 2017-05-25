class MenusController < ApplicationController
  def show
    @menus = Menu.where(restaurant_id: params[:restaurant_id])
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
