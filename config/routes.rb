Rails.application.routes.draw do
  resources :things
  post '/api/v1', to: 'api#execute'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  root "things#index"
end
