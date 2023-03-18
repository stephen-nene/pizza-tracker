class RestaurantsController < ApplicationController

  def index
    @restaurant = Restaurant.all
    render json: @restaurant, only: [:name, :address]
  end

  def show
    @restaurants = Restaurant.find_by(id: params[:id])
    if @restaurants
    render json: @restaurants,  only: [:name, :address]
    else
      render json: { error: 'Restaurant not found' }, status: :not_found
    end
  end

  def destroy
    @restaurant = Restaurant.find_by(id: params[:id])
    if @restaurant.nil?
      render json: { error: 'Restaurant not found' }, status: :not_found
    else
      @restaurant.restaurant_pizzas.destroy_all
      @restaurant.destroy
      head :no_content
    end
  end

end
