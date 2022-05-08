Rails.application.routes.draw do
  resources :post
  devise_for :users
end
