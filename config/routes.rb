Rails.application.routes.draw do

devise_for :users

  resources :shops, only: [:index, :show] do
    member do
      get 'add_to_cart', to: 'orders#add_to_cart'
    end
    member do
      get 'cart', to: 'orders#cart'
    end
  end

  resources :orders, only: [:index, :show] do
    resources :order_items, only: [:create, :destroy]
    post 'validate', to: 'orders#validate'
  end
  get '/profile', to: 'orders#index', as: 'profile'

  root to: 'pages#home'
end
