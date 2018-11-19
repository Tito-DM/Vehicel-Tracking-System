Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  resources :users do
    resources :vehicels do
      resources :locations do
      end
    end
  end


  resources :home do
      collection do
        get :about
        get :hdwconnection
      end
  end

  namespace :api do
    resources :pings, only: :index, constraints: { format: 'json' }
    resources :locations, only: [:index, :create]
  end
end
