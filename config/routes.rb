Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'prototypes#index'
  resources :prototypes do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
end
