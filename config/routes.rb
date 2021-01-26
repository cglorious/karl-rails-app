Rails.application.routes.draw do

  get '/signup', to: 'customers#new'
  root 'static#home'
  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'

  resources :categories do
    resources :businesses, only: [:new, :create, :index]
  end
  resources :reviews
  resources :customers do
    resources :reviews, only: [:new, :create, :index, :edit]
  end
  resources :businesses do
    resources :reviews, only: [:new, :create, :index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
