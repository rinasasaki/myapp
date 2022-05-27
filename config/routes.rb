Rails.application.routes.draw do
  resources :posts
  devise_for :users
  get '/users/:user_id', to: 'users#show'
  patch'/users/:user_id', to: 'users#update'

end

