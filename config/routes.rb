Rails.application.routes.draw do
  
  
  #devise_for :users
  get 'pages/index'
  get 'pages/show'
  get 'users/new'
  get 'sessions/new'
  get 'resource/sign_up'
  
  root 'sessions#index'
  get 'pages/help'
  
  resources :users
  
  get '/login',  to: 'sessions#new'
  post '/login',  to: 'sessions#create'
  delete 'login',  to:  'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
