class Owners::MenusController < ApplicationController
  def new
    @menu = Menu.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @menu = Menu.new(name: params[:menu][:name], restaurant_id: params[:restaurant_id])
    if @menu.save
      redirect_to owners_restaurant_path(params[:restaurant_id])
      flash[:notice] = "Menu added"
    else
      redirect_to "new"
    end
  end

  def edit
    @menu = Menu.find(params[:id])
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def update
    menu = Menu.find(params[:id])
    menu.name = menu_params[:name]
    menu.save
    redirect_to owners_restaurant_path(params[:restaurant_id])
    flash[:notice] = "Menu updated"
  end

  def destroy
    menu = Menu.find(params[:id])
    menu.destroy
    redirect_to owners_restaurant_path(params[:restaurant_id])
    flash[:notice] = "Menu deleted"
  end

  private

  def menu_params
    params.require(:menu).permit(:name)
  end
end
