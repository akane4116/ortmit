Rails.application.routes.draw do
  
  
  get 'invitations/users'
  devise_for :users
 
  
  root 'pages#index'
  #get 'pages/help'
  
  resources :users
  
  #get '/login',  to: 'sessions#new'
  #post '/login',  to: 'sessions#create'
  #delete 'login',  to:  'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: '/letter_opener'
  end

end
