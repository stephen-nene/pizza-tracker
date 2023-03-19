
class RestaurantPizzasController < ApplicationController
  # GET /restaurants/3/pizzas
  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @pizzas = @restaurant.pizzas

    render json: {
      pizzas: @pizzas.as_json(only: [:id, :name, :ingredients]),
      prices_id: @restaurant.restaurant_pizzas.as_json(only: [:id, :price, :pizza_id, :restaurant_id])
    }
  end

  # GET /restaurants/:id/pizzas/:id
  def show
    @restaurant = Restaurant.find_by(id: params[:restaurant_id])
    if @restaurant
      @pizza = Pizza.find_by(id: params[:id])
      if @pizza
        @restaurant_pizza = RestaurantPizza.find_by(restaurant: @restaurant, pizza: @pizza)
        if @restaurant_pizza
          render json: {
            pizza: @pizza.as_json(only: [:id, :name, :ingredients]),
            price: @restaurant_pizza.as_json(except: [:created_at, :updated_at])
          }
        else
          render json: { error: 'Restaurant pizza not found' }, status: :not_found
        end
      else
        render json: { error: 'Pizza not found' }, status: :not_found
      end
    else
      render json: { error: 'Restaurant not found' }, status: :not_found
    end
  end

  # POST /restaurant_pizzas
  skip_before_action :verify_authenticity_token
  def create
    @restaurant = Restaurant.find_by(id: params[:restaurant_id])
    @pizza = Pizza.find_by(id: params[:pizza_id])

    unless @restaurant && @pizza
      error = {}
      error[:restaurant] = "Restaurant not found" unless @restaurant
      error[:pizza] = "Pizza not found" unless @pizza
      render json: { errors: error }, status: :unprocessable_entity and return
    end

    @restaurant_pizza = RestaurantPizza.new(pizza_params)
    if @restaurant_pizza.save
      render json: @restaurant_pizza.pizza.as_json(only: [:id, :name, :ingredients])
    else
      render json: { errors: @restaurant_pizza.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # DELETE /restaurant_pizza/:id
  def destroy
    @restaurant_pizza = RestaurantPizza.find_by(id: params[:id])
    if @restaurant_pizza
      @restaurant_pizza.destroy
    else
      render json: { error: 'Restaurant pizza not found' }, status: :not_found
    end
  end

  private

  def pizza_params
    params.require(:restaurant_pizza).permit(:price, :pizza_id, :restaurant_id)
  end
end
