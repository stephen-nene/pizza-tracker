
Rails.application.routes.draw do
  # pizzas
  resources :pizzas, only: [:index, :show, :create, :destroy]

  # restaurants
  resources :restaurants, only: [:index, :show, :create, :destroy] do
    # nested resources for restaurant pizzas
    resources :pizzas, only: [:index, :show], controller: 'restaurant_pizzas'
  end

  # restaurant pizzas
  resources :restaurant_pizzas, only: [:create]
end
