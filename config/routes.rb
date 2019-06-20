Rails.application.routes.draw do

  resources:services do
    resources:comments
  end

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  root 'welcomes#index'
  resources :properties
  resources :services
  resources :employees
  resources :client


end
