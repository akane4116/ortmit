Rails.application.routes.draw do
  
  
  resources :answers
  resources :questions
  get 'topics/new'
  get 'invitations/users'
  get 'memories/index'
  post '/memories', to: 'memories#create'
  delete '/memories', to: 'memories#destroy'
  
  devise_for :users
 
  
  root 'pages#index'
  #get 'pages/help'
  
  resources :users
  resources :topics do
   resources :comments
  end
  
 
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites', to: 'favorites#destroy'
  
  get 'myfolders/index'
  delete '/myfolders', to: 'myfolders#destroy'

 get '/login',  to: 'sessions#new'
 post '/login',  to: 'sessions#create'
 delete '/logout', to: 'sessions#destroy'
 
  
  
  #get '/login',  to: 'sessions#new'
  #post '/login',  to: 'sessions#create'
  #delete 'login',  to:  'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: '/letter_opener'
  end

end
