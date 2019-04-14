Rails.application.routes.draw do
 
  get 'pages/home'
  get 'pages/blog'
  get 'pages/about'
  get 'pages/contact'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'home#index'
  resources:posts
  resources:categories 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
