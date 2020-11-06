Rails.application.routes.draw do
  resources :treats
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
end
