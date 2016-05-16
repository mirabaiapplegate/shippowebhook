Rails.application.routes.draw do
  resources :webhook_logs
  resources :webhooks, only: [:create]

  root 'webhook_logs#index'
end
