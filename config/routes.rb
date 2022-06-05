Rails.application.routes.draw do
  get '/users/:id', to: 'user#show'
  patch'/users/:id', to: 'user#update'
  resources :posts
  devise_for :users
end

