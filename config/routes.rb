Rails.application.routes.draw do
  resources :contacts
  get 'up' => 'rails/health#show', as: :rails_health_check

  root 'static_page#index'

  get 'sobre', to: 'static_page#sobre'
  get 'contato', to: 'static_page#contato'
end
