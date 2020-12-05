Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'discover', to: 'pages#discover'

  resources :users, only: [:index] do
    resources :reviews, only: [:index]
    resources :favourites, only: [:index]
  end

  resources :restaurants, only: [:new, :create, :edit, :update]

  resources :restaurants, only: [:show, :index] do
    resources :dishes, only: [:new, :create]
  end

  resources :favourites, only: [:destroy]

  resources :reviews, only: [:destroy]

 resources :dishes, only: [:index, :show] do
    resources :favourites, only: [:create]
    resources :reviews, only: [:new, :create]
  end
end
