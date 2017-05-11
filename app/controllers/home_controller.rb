class HomeController < ApplicationController
  def index
    @Restaurants = Restaurant.all
  end
end
