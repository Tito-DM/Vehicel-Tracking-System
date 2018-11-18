Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  resources :users do
    resources :vehicels do
    end
  end
  resources :locations

  resources :home

  namespace :api do
    resources :pings, only: :index, constraints: { format: 'json' }
    resources :locations, only: [:index, :create]
  end
end
