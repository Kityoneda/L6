Rails.application.routes.draw do
  get 'top/main'
  root 'top#main'
  resources :products
  resources :cart_items, only: [:new, :create, :destroy]
  resources :carts, only: [:show]
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
