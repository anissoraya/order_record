Rails.application.routes.draw do
  root 'dashboard#index'

  resources :orders
  resources :items
  resources :customers
  resources :runners
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
