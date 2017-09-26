Rails.application.routes.draw do
  get '/', to: 'index#index'

  post '/login', to: "authentication#login"
  get '/logout', to: "authentication#logout"

  resources :voters

  resources :cities, only: [:index, :show]
  resources :states, only: [:index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
