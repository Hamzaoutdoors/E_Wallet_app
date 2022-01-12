Rails.application.routes.draw do
  devise_for :users
  root 'splashes#index'
  
  resources :activities, only: [:index, :new, :show, :create]
  resources :categories, only: [:index, :new, :show, :create]
end
