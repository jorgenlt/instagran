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

  resources :users, only: [:new, :create, :destroy]
<<<<<<< HEAD

  get '/components_alex' => 'pages#components_alex'
=======
  get "/components_alexander/", to: "pages#components_alexander"

  get "/components_jorgen/", to: "pages#components_jorgen"
>>>>>>> bda1fe2a6d5e84c9dea19a1874b67a553583f69b
end
