Rails.application.routes.draw do
  get '/treats', to: 'treats#index', as: 'treats'
  post '/treats', to: 'treats#create'
  get '/treats/new', to: 'treats#new', as: 'new_treat'
end
