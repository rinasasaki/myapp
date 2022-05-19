Rails.application.routes.draw do
  resources :posts
  devise_for :users
  delete '/logout', to: 'sessions#destroy'
end
