Rails.application.routes.draw do
  devise_for :users
  get '/users/:id', to: 'user#show'
  patch'/users/:id', to: 'user#update'
  resources :posts
  
end

