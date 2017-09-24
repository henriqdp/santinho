Rails.application.routes.draw do
  post '/login', to: "authentication#login"

  get '/logout', to: "authentication#logout"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
