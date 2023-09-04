Rails.application.routes.draw do
  resources :posts
  get 'sessions/new'
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users

  get '/signupadmin', to: 'admin/admins#new'
  resources :admins
  resources :posts
  resources :account_activations, only: [:edit]
end
