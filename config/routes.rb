Rails.application.routes.draw do
  devise_for :users
  resources :carts
  resources :products do
    resources :orders, only: :create
  end
  root 'products#index'
end
