Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  resources :users do
    resources :vehicels do
      resources :locations do
      end
    end
  end


  resources :home

  namespace :api do
    resources :pings, only: :index, constraints: { format: 'json' }
    resources :locations, only: [:index, :create]
  end
end
