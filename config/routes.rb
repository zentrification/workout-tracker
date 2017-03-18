Rails.application.routes.draw do

  devise_for :users
  mount Foundation::Rails::Engine, at: 'styleguide'

  resources :workouts
  resources :exercises

  root to: 'workouts#index'
end
