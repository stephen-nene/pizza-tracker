class RestaurantPizzasController < ApplicationController

  # GETs from /restaurants/3/pizzas
  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @pizzas = @restaurant.pizzas
    render json: @pizzas, only: [ :name, :ingredients]
  end


end
