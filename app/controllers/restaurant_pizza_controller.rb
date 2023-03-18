class RestaurantPizzaController < ApplicationController

  def index
    @restaurants = Restaurant.all
    render :json @restaurant
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    render :json @restaurant
  end
  
end
