Rails.application.routes.draw do

devise_for :users

  post 'upquantity', to: 'shops#additem'
  post 'downquantity', to: 'shops#removeitem'
  get 'total_price', to: 'shops#total_price'

  resources :shops, only: [:index, :show] do
    member do
      get 'add_to_cart', to: 'orders#add_to_cart'
    end
    member do
      get 'cart'
    end
  end

  resources :orders, only: [:index, :show, :create] do
    resources :order_items, only: [:create, :destroy]
    post 'validate', to: 'orders#validate'
  end
  get '/profile', to: 'orders#index', as: 'profile'

  root to: 'pages#home'

end

