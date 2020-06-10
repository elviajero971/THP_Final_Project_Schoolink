Rails.application.routes.draw do
  root 'subjects#index'
  
  devise_for :users
  
  resources :subjects
  resources :users, only: [:show, :update, :edit] do 
    resources :profile_pics, only: [:create]
  end

end