Rails.application.routes.draw do
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # User signup
  post "/signup", to: "users#create"

  # User login
  post "/login", to: "auths#create"
end
