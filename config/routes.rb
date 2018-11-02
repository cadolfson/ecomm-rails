Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  resources :pages, only: [:show]

  get ':permalink', to: 'pages#permalink'


  root to: 'admin/dashboard#index'
end
