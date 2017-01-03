Rails.application.routes.draw do

  resources :order_templates
  #resources :chef_orders
  resources :runner_orders
  resources :chefs
  root 'dashboard#index'

  resources :orders do
    resources :runner_orders
  end
  resources :chefs do
    resources :chef_orders
  end


  resources :orders do
    resources :chef_orders
  end
  resources :items
  resources :customers
  resources :runners do
    resources :runner_tasks
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
