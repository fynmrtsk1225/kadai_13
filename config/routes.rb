Rails.application.routes.draw do
  resources :tags
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "homes#index"
  devise_for :users, controllers: { registrations: 'users/registrations' }, path: 'user'
  resources :homes, only: [:index]
  resources :users, only: [:show]
  resources :profiles, only: [:edit, :update]
  resources :pictures
end
