Rails.application.routes.draw do
  root 'subjects#index'
  
  get '/charte-whiteboard', to: 'static#guideline'
  get '/contact', to: 'static#contact'
  get '/a-propos', to: 'static#about'
  
  devise_for :users, path: 'gestion', path_names: { sign_in: 'se-connecter', sign_out: 'deconnexion', password: 'secret', confirmation: 'verification', unlock: 'deblocage', registration: 'compte', sign_up: 'inscription' }
  
  
  resources :subjects, path: 'ressource' do
    resources :comments do
      resources :answers
    end
  end
  resources :users, only: [:show, :update, :edit], path: 'profil' do
    resources :profile_pics, only: [:create]
  end
  resources :join_fav_subject, only: [:update, :destroy]
  resources :join_read_subject, only: [:update, :destroy]
  resources :join_validate_subject, only: [:update, :destroy]

  namespace :admin do
    root to: 'admin/items#index'
    resources :dashboard, only: [:index], path: 'dashboard'
    resources :subjects, only: [:edit, :update, :destroy], path: 'ressource'
  end

end