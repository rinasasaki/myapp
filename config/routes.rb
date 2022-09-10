Rails.application.routes.draw do
  devise_for :users
  get '/users/:id', to: 'user#show'
  patch'/users/:id', to: 'user#update'
  resources :users, only: [:show, :update, :edit] 
  resources :posts
  resources :events
end

