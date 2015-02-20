Rails.application.routes.draw do
  root to: "books#index"
  
  resources :books
  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
end
