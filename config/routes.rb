Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :show, :destroy] do
    resources :pizzas, only: [:index], controller: 'restaurant_pizzas'
  end
  resources :pizzas, only: [:index]
  resources :restaurant_pizzas, only: [:create]
  
end
