Rails.application.routes.draw do
  resources :room_ideas
  resources :products, only: [:index, :show]
  resources :tags
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "homes#index"
  devise_for :users, controllers: { registrations: 'users/registrations' }, path: 'user'
  resources :homes, only: [:index]
  resources :users, only: [:index, :show] do
    collection do
      get 'search'
    end
  end
  resources :profiles, only: [:edit, :update]
  resources :pictures
end
