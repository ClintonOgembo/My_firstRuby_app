Rails.application.routes.draw do
  get "time/current_time"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  get "up" => "rails/health#show", as: :rails_health_check

  get "/current_time", to: "time#current_time"

end
