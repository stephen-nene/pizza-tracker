class PizzasController < ApplicationController

  # GET /pizzas
  def index
    @pizzas = Pizza.all
    render json: @pizzas, only: [ :id, :name, :ingredients]
  end

  # GET /pizzas/:id
  def show
    @pizza = Pizza.find_by(id: params[:id])
    if @pizza.nil?
      render json: { error: 'Pizza not found' }, status: :not_found
    else
      render json: @pizza, only: [:id, :name, :ingredients]
    end
  end

  # POST /pizzas/:id
  def create
    @pizza = Pizza.new(pizza_params)
  end

  #DELETE /pizzas/:id
  def destroy
    @pizza = Pizza.find_by(id: params[:id])
    if @pizza
      @pizza.destroy
    else
      render json: { error: 'Pizza not found' }, status: :not_found
    end
  end


  private
  def pizza_params
    params.permit(:name, :price, :ingredients)
  end
end

