Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'market#index'
  resources :market, as: :categorys
  resources :products
  resources :usercenter
  devise_for :users
  get '/seller/:id', to: 'market#seller', as: 'seller'
end