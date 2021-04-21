Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'restaurants#home'
  resources :restaurants, only: [:new, :create, :index, :show] do
    resources :reviews, only: [ :new, :create ]
  end
end

# A visitor can add a new review to a restaurant
# GET "restaurants/38/reviews/new"
# POST "restaurants/38/reviews"
