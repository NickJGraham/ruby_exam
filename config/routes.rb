Rails.application.routes.draw do

  root 'sessions#new'

  get "sessions/new" => 'sessions#new', as: 'register'
  get "sessions/login" => 'sessions#login', as: 'login'
  post "sessions/new" => 'sessions#create'
  delete "sessions" => 'sessions#logout'
  
  post "lenders" => 'lenders#create'
  get "lenders" => 'lenders#show'
  post "lenders/:id" => 'lenders#update'
  
  post "borrowers" => 'borrowers#create'
  get "borrowers" => 'borrowers#show'
end
