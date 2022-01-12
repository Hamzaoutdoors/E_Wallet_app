Rails.application.routes.draw do
  devise_for :users
  root 'splashes#index'
  
  resources :categories, only: [:index, :new, :show, :create]
  resources :activities, only: [:new, :show, :create]
end
