Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  resources :pessoas, only: %i[index create]
  resource :session, only: :show, path: "login"
  resources :aulas, only: %i[index create show destroy]
  resources :aulas_pessoas, only: %i[create index show destroy]
  get "show_aula_pessoa", to: "aulas#show_aula_where_ids"
end
