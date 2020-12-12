Rails.application.routes.draw do
  
  
  resources :answers
  resources :questions
  get 'topics/new'
  get 'invitations/users'
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  get 'saves/index'
  post '/saves', to: 'saves#create'
  
  devise_for :users
 
  
  root 'pages#index'
  #get 'pages/help'
  
  resources :users
  resources :topics
  resources :comments
  resources :favorites

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
