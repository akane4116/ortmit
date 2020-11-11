Rails.application.routes.draw do
  get 'users/new'
  get 'sessions/new'
  
  root 'pages#index'
  get 'pages/help'
  
  resources :users
  
  get '/login',  to: 'sessions#new'
  post '/login',  to: 'sessions#create'
  delete 'login',  to:  'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
