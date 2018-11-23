# frozen_string_literal: true

Rails.application.routes.draw do
  get 'search/index'
  get 'search/results'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :pages, only: [:show]
  resources :products, only: [:index, :show]
  resources :animals, only: [:index, :show]

  get ':permalink', to: 'pages#permalink'

  root to: 'admin/dashboard#index'
end
