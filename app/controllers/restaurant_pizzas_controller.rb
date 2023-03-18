
class RestaurantPizzasController < ApplicationController
  # GETs from /restaurants/3/pizzas
  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @pizzas = @restaurant.pizzas

    render json: {
      pizzas: @pizzas.as_json(only: [:id, :name, :ingredients]),
      prices_id: @restaurant.restaurant_pizzas.as_json(only: [:id, :price, :pizza_id, :restaurant_id])
    }
  end
end
