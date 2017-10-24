Rails.application.routes.draw do
  resources :restaurants
  resources :comments
  resources :favorites
  resources :users
  get '/', to: "users#home"

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destory'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
