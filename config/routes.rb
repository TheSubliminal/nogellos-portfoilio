Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'images/new'
  get 'images/create'
  get 'images/destroy'
  get 'images/index'
  resources :images
  resources :categories, only: [:show, :index]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
