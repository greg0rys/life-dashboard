Rails.application.routes.draw do
  resources :contact_mes
  resources :inventories
  resources :books
  resources :bills
  resources :transactions
  resources :homes
  resources :accounts
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  #contact me
  get '/contact', to: 'contact_mes#index', as: 'contact'
  # set the homepage using root
  root 'homes#index'
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
