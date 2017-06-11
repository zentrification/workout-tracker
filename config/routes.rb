Rails.application.routes.draw do

  mount Foundation::Rails::Engine, at: 'styleguide'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :workouts do
    get :repeat, on: :member
  end
  resources :exercises

  root to: 'workouts#index'
end
