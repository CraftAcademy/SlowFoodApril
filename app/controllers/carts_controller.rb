class CartsController < ApplicationController
  def add_to_cart
    session[:cart] ||= []
    dish = Dish.find(params[:dish_id])
    @restaurant_id = params[:restaurant_id]
    restaurant = Restaurant.find(@restaurant_id)
    session[:cart] << [dish, restaurant]
    redirect_to restaurant_menus_path(@restaurant_id)
    flash[:notice] = "#{dish.name} added to cart"
  end

  def checkout
    if session[:cart] == nil
      @empty_cart = true
    else
      @items = session[:cart]
      @total_price = 0
      @restaurants = []
      @items.each do |item|
        @total_price += item[0]['price']
        unless @restaurants.include?(item[1])
          @restaurants << item[1]
        end
      end
      @empty_cart = false
    end
  end

  def empty_cart
    session[:cart] = nil
    @empty_cart = true
    render 'checkout'
  end
end
