Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products, only: [:index, :new]
  resources :orders, only: [ :create]

  #get '/cart' => "orders#cart"
  #get '/orders/:id/cart' => "orders#cart", as: :cart


end
