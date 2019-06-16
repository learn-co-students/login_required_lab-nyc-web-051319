Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/" => "sessions#new", as: "login"
  get "/secret" => "secrets#show"
  post '/login' => "sessions#create"
  post '/destroy' => "sessions#destroy"

end
