Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'market#index'
  resources :market, as: :categorys
  resources :products
  devise_for :users
  get '/seller/:id', to: 'market#seller', as: 'seller'
  get '/usercenter', to: 'usercenter#index'
  get '/wishlist', to: 'usercenter#wishlist', as: 'wishlist'
  delete '/wishlist/:item', to: 'usercenter#delete_wishlist', as: 'destroy_wishlist'
  post '/wishlist/:item', to:'usercenter#create_wishlist', as: 'create_wishlist'
end