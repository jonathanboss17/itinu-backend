Rails.application.routes.draw do
  resources :three_days
  resources :two_days
  resources :images
  resources :one_days
  resources :comments
  resources :likes
  resources :genres
  resources :destinations
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
