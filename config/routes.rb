Rails.application.routes.draw do
  get 'favorite_products/index'
  get 'favorite_products/create'
  get 'favorite_products/destroy'
  root "homes#index"

  resources :homes, only: [:index]

  devise_for :users, controllers: { registrations: 'users/registrations' }, path: 'user'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :users, only: [:index, :show] do
    collection do
      get 'search'
    end
    resource :relationships, only: [:create, :destroy]
    get :follows, on: :member
    get :followers, on: :member
  end

  resources :profiles, only: [:edit, :update]

  resources :pictures do
    collection do
      get 'search'
    end
  end

  resources :favorite_pictures, only: [:index]
  post 'favorite_picture/:id' => 'favorite_pictures#create', as: 'create_favorite_picture'
  delete 'favorite_picture/:id' => 'favorite_pictures#destroy', as: 'destroy_favorite_picture'

  resources :tags
  resources :products, only: [:index, :show] do
    collection do
      get 'search'
    end
  end

  resources :room_ideas
end