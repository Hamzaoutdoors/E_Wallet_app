Rails.application.routes.draw do
  devise_for :users
  root 'categories#index'
  
  resources :actions
  resources :categories
end
