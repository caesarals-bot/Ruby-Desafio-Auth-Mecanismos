Rails.application.routes.draw do
  resources :publications
  resources :comments, only: [:create]
  get 'welcome/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end
