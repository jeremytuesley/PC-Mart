Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'market#index'
  resources :market, as: :category 
  resources :product
  devise_for :users
end