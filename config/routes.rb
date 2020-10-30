Rails.application.routes.draw do
  resources :treats
  # get '/treats', to: 'treats#index', as: 'treats'
  # post '/treats', to: 'treats#create'
  # get '/treats/new', to: 'treats#new', as: 'new_treat'
  # get '/treats/:id', to: 'treats#show', as: 'treat'
  # patch '/treats/:id', to: 'treats#update'
end
