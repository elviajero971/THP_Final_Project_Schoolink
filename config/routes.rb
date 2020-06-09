Rails.application.routes.draw do
  root 'static#home'
  
  devise_for :users
  resources :subjects

    resources :users, only: [:show] do 
    resources :profile_pics, only: [:create]
  end  

end