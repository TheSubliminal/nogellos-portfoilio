Rails.application.routes.draw do
  get 'images/new'
  get 'images/create'
  get 'images/destroy'
  get 'images/index'
  resources :images
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
    root to: 'pages#home'
    get 'about', to: 'pages#about'
end
