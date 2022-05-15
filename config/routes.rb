Rails.application.routes.draw do
  devise_for :users
  get "login" => "users#login_form"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
