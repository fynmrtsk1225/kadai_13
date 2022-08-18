Rails.application.routes.draw do
  root "homes#index"

  resources :homes, only: [:index]

  devise_for :users, controllers: { registrations: 'users/registrations' }, path: 'user'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :users, only: [:index, :show] do
    collection do
      get 'search'
    end
  end

  resources :profiles, only: [:edit, :update]

  resources :pictures
  resources :tags
  resources :products, only: [:index, :show] do
    collection do
      get 'search'
    end
  end

  resources :room_ideas
end
