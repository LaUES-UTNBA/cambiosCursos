Rails.application.routes.draw do
  devise_for :users, path_names: {
    edit: '',
    update: ''
  }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self) rescue nil
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  root 'subscriptions#index'

  resource :users, only: [:show, :edit, :update]

  resource :subscriptions 
  
end
