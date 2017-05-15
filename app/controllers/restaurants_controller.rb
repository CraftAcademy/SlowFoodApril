class RestaurantsController < ApplicationController

  before_action :nearby

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

  def new
    @restaurant = Restaurant.new
    @categories = RestCategory.all
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.user = current_user
    if @restaurant.save
      redirect_to root_path
      flash[:notice] = 'Your restaurant has been sucessfully registered!'
    else
      render 'new'
    end
  end

  private

  def nearby
    @user_lat = params[:latitude]
    @user_long = params[:longitude]
    @near_restaurants = Restaurant.near([@user_lat, @user_long], 20)
  end

  def restaurant_params
    params.require(:restaurant)
          .permit(:name,
                  :address,
                  :city,
                  :province,
                  :country,
                  :rest_category_id)
  end
end
