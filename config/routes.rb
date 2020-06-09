Rails.application.routes.draw do
  resources :users, only: [:show] do 
    resources :profile_pics, only: [:create]
  end  

  root 'static#home'
  
  devise_for :users
  resources :subjects

end