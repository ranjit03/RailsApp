Rails.application.routes.draw do
 
  get 'pages/home'
  get 'pages/blog'
  get 'pages/about'
  get 'pages/contact'
  get 'home/index'
 
  root to: 'home#index'
  resources:posts
  resources:categories 

  get '/index', :to => 'home#index'
  get '/about', :to => 'pages#about'
  get '/blog', :to => 'pages#blog'
  get '/contact', :to => 'pages#contact'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
