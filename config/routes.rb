Rails.application.routes.draw do
  root "homes#index"
  devise_for :users, path: 'user'
  resources :homes, only: [:index]
  resources :users, only: [:show]
end
