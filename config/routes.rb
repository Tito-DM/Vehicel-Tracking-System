Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  resources :users do
    resources :vehicels do
    end
  end
   resources :locations

  resources :home

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
