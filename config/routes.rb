Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :grandmas, only: [:index, :show, :new, :create, :destroy] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:index]

  resources :users, only: [:show, :new, :create, :destroy]

  # get "components-julia", to: "pages#components_julia"

  # get '/components_alex' => 'pages#components_alex'

  # get "/components_alexander/", to: "pages#components_alexander"

  # get "/components_jorgen/", to: "pages#components_jorgen"

end
