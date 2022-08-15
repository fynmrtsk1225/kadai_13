Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "homes#index"
  devise_for :users, path: 'user'
  resources :homes, only: [:index]
  resources :users, only: [:show]
end
