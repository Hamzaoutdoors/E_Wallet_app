Rails.application.routes.draw do
  devise_for :users
  
  resources :actions
  resources :categories
end
