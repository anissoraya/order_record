Rails.application.routes.draw do

  get 'print/print_order'
  get 'print/print_order_chef'
  get 'print/print_order_all'
  get 'print/print_order/:runner_id/:date', to: 'print#print_order'

  resources :order_templates
  resources :chef_orders
  resources :chefs
  root 'dashboard#index'

  patch 'orders/index', to: 'order_templates#update'
  put 'orders/index', to: 'order_templates#update'
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
