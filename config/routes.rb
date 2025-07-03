Rails.application.routes.draw do
  get "time/current_time"
  get "up" => "rails/health#show", as: :rails_health_check
  get "/current_time", to: "time#current_time"
  resources :currency_convertions, only: :create
  resources :demo, only: [:show, :update, :destroy]
end
