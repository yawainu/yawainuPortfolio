Rails.application.routes.draw do

  get 'user_sessions/new'

  get 'admin/index'

  # resources
  resources :users do
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

  get  'sign_in' => 'user_sessions#new', as: :sign_in
  get  'sign_out' => 'user_sessions#destroy', as: :sign_out
end
