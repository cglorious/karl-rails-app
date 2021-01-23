Rails.application.routes.draw do

  get '/signup', to: 'customers#new'
  root 'static#home'
  get '/login', to: 'session#new'

  resources :categories
  resources :reviews
  resources :customers
  resources :businesses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
