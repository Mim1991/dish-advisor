Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'profile', action: :show, controller: 'users'

  resources :restaurants, only: [:show, :index]

  resources :dishes, only: [:index, :show] do
    resources :favourites, only: [:create]
    resources :reviews, only: [:new, :create]
  end
end
