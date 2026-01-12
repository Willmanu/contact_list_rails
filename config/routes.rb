Rails.application.routes.draw do
  # get "sessions/new"
  # get 'up' => 'rails/health#show', as: :rails_health_check

  root 'static_page#index'

  get 'sobre', to: 'static_page#sobre'
  get 'contato', to: 'static_page#contato'
  get 'entrar', to: 'sessions#new'
  post 'entrar', to: 'sessions#create'
  delete 'sair', to: 'sessions#destroy'

  resources :contacts
  resources :users, only: %i[new create show]
end
