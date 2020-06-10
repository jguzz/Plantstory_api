Rails.application.routes.draw do

  resources :likes
  resources :posts
  resources :stories
  resources :plants
  resources :collections
  resources :users

  post '/login', to: 'users#show'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
