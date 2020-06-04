Rails.application.routes.draw do

  resources :collections
  resources :users
  resources :likes
  resources :posts 
  resources :stories 
  resources :plants

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
