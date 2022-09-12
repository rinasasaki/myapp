Rails.application.routes.draw do
  get '/users/:id', to: 'users#show'
  patch'/users/:id', to: 'users#update'
  resources :posts
  devise_for :users
end

