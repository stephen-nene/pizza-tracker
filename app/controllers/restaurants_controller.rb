class RestaurantsController < ApplicationController

  def index
    @restaurant = Restaurant.all
    render json: @restaurant, only: [:name, :address]
  end

  def show
    @restaurants = Restaurant.find_by(id: params[:id])
    render json: @restaurants,  only: [:name, :address]
  end

end
