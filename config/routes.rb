Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "products#index"
  post "products/add_to_cart/:id", to: "products#add_to_cart", as: "add_to_cart"
  delete "products/remove_from_cart/:id", to: "products#remove_from_cart", as: "remove_from_cart"

  #resources :products
  #resources :orders

  #get '/cart', to: "products#cart", as: 'cart'

  #post 'products/add_to_cart/:id', to: 'products#cart', as: 'add_to_cart'

  #get '/cart' => "orders#cart"
  #get '/orders/:id/cart' => "orders#cart", as: :cart


end
