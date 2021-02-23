Rails.application.routes.draw do
  root "texts#index"
  resources :texts
  devise_for :users
end
