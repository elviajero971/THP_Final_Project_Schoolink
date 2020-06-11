Rails.application.routes.draw do
  get 'join_validate_subject/update'
  get 'join_validate_subject/destroy'
  get 'join_read_subject/update'
  get 'join_read_subject/destroy'
  root 'subjects#index'
  
  get '/contact', to: 'static#contact'
  get '/about', to: 'static#about'
  
  devise_for :users, path: 'gestion'
  
  resources :subjects, path: 'ressource'
  resources :users, only: [:show, :update, :edit], path: 'profil' do
    resources :profile_pics, only: [:create]
  end
  resources :join_fav_subject, only: [:update, :destroy]
  resources :join_read_subject, only: [:update, :destroy]
  resources :join_validate_subject, only: [:update, :destroy]
  resources :user_rating, only: [:update, :destroy]

  namespace :admin do
    root to: 'admin/items#index'
    resources :dashboard, only: [:index], path: 'dashboard'
    resources :subjects, path: 'ressource'
  end

end