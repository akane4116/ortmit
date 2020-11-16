Rails.application.routes.draw do
  
  
  devise_for :users
 
  
  root 'users#sign_in'
  get 'pages/help'
  
  resources :users
  
  get '/login',  to: 'sessions#new'
  post '/login',  to: 'sessions#create'
  delete 'login',  to:  'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
