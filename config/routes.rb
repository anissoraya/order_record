Rails.application.routes.draw do
  root 'dashboard#home'
  get 'dashboard/meta'
  get 'dashboard/index'
  
  devise_for :users, controllers: {registrations: 'users/registrations', sessions: 'users/sessions'}
  devise_for :admins, {registrations: 'admins/registrations', sessions: 'admins/sessions'}
  #resources :chef_orders
  resources :runner_orders
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
