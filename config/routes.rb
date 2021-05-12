Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "texts#index"
  resources :texts, only: [:index, :show] do
    resource :reads, only: [:create, :destroy]
  end
  devise_for :users

  resources :movies, only: [:index] do
    resources :watches, only: [:create, :destroy]
  end
end