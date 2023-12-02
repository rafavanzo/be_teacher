Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  resources :pessoas, only: :create
  resource :session, only: :show, path: "login"
  resources :aulas, only: %i[index create show]
end
