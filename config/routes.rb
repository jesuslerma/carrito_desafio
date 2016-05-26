Rails.application.routes.draw do
  devise_for :users
  resources :carts
  resources :products
  root 'products#index'
end
