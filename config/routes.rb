Rails.application.routes.draw do
  root to: 'ranking#index'
  get  '/ranking', to: 'ranking#index'

  resources :players
  resources :matches, only: [:index, :new, :create]
  resources :teams, only: [:index, :new, :create]
end
