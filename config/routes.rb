Rails.application.routes.draw do
  root 'subjects#index'
  
  get '/contact', to: 'static#contact'
  get '/about', to: 'static#about'
  
  devise_for :users
  
  resources :subjects
  resources :users, only: [:show, :update, :edit] do 
    resources :profile_pics, only: [:create]
  end

end