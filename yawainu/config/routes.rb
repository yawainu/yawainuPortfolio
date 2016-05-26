Rails.application.routes.draw do

  # resources
  resources :user_sessions

  resources :users do
    resources :top
    resources :admin

    resources :categories do
      resources :galleries
    end
    resources :works
  end

  resources :covers
  resources :displays

  # rooting
  root 'top#index'

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
end
