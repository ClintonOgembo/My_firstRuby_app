Rails.application.routes.draw do
  get "time/current_time"
  get "up" => "rails/health#show", as: :rails_health_check
  get "/current_time", to: "time#current_time"
  resources :currency_convertions, only: :create
  get "/show", to: "demo#show"
  patch "/update", to: "demo#update"
  delete "/delete", to: "demo#delete"
  get "/movie_genres", to: "movie_genres#index"
  post "/movie_genres", to: "movie_genres#create"
  get "/movie_genres/:id/edit", to: "movie_genres#edit"
  patch "/movie_genres/:id", to: "movie_genres#update"
end
