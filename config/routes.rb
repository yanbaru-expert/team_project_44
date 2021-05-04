Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "texts#index"
  resources :texts, only: [:index, :show] do
    resource :reads, only: [:create, :destroy]
  end
  devise_for :users
  resources :movies
  resources :questions, only: :index
end