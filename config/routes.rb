Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'users/login'
  get "/" => "home#top"
  get "home/about" => "home#about"
  
  get "/categories" => "categories#top"
  get "/categories/:id" => "categories#show"

  get "/rankings" => "rankings#top"
  get "/rankings/index" => "rankings#index"
  get "/rankings/college_faculty_1" => "rankings#college_faculty_1"

  get "/picks" => "picks#top"

  get "/users/login" => "users#login"

  root 'comments#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
