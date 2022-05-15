Rails.application.routes.draw do
  resources :posts
  devise_for :users
  get "login" => "users#login_form"
end
