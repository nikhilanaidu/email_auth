Rails.application.routes.draw do
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  

  get 'pages/home'
root 'pages#home'
get     'secret',        to: 'pages#secret',              as: :secret
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :users
resources :sessions

end
