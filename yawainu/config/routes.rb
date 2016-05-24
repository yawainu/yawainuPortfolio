Rails.application.routes.draw do

  # resources
  resources :user_sessions

  resources :users do
    resources :admin
    resources :categories do
      resources :galleries
    end

    resources :covers
    resources :works
    resources :disprays
  end

  # rooting
  root 'top#index'
  get  'admin', to: 'admin#index'

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
end
