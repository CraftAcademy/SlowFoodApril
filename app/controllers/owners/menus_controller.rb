class Owners::MenusController < ApplicationController
  def new
    @menu = Menu.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @menu = Menu.new(name: menu_params[:name], restaurant_id: restaurant_params[:restaurant_id])
    if @menu.save
      redirect_to owners_restaurant_path(params[:restaurant_id])
      flash[:notice] = "Menu added"
    else
      redirect_to "new"
    end
  end

  private

  def menu_params
    params.require(:menu).permit(:name)
  end

  def restaurant_params
    params.permit(:restaurant_id)
  end
end
