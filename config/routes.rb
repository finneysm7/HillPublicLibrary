Rails.application.routes.draw do
  root to: "sessions#new"
  
  resources :books
  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
end
