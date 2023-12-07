Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get 'upcoming_reservations', to: 'reservations#upcoming', as: 'upcoming_reservations'
  get 'past_reservations', to: 'reservations#past', as: 'past_reservations'
  get '/profiles', to: 'users#profiles'
  get '/validate', to: 'reservations#validate'


    resources :users, only: [:show, :index] do
    resources :reservations, only: [:create, :new, :index, :show, :validate]
  end
  resources :users
end
