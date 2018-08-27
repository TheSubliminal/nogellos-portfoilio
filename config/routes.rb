Rails.application.routes.draw do
  get 'images/new'
  get 'images/create'
  get 'images/destroy'
  get 'images/index'
  get 'categories/new'
  get 'categories/create'
  get 'categories/edit'
  get 'categories/update'
  get 'categories/destroy'
  get 'categories/show'
  resources :images, :categories
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
    root to: 'pages#home'
    get 'about', to: 'pages#about'
end
