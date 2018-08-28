Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'works', to: 'pages#works'
  get 'images/new'
  get 'images/create'
  get 'images/destroy'
  get 'images/index'
  resources :images
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
