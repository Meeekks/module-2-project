Rails.application.routes.draw do

  resources :restaurants, except: [:create]
  post '/restaurants/results', to: "restaurants#create"
  resources :comments
  resources :favorites
  resources :users

  root "welcome#home"

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

end
