Rails.application.routes.draw do

devise_for :users

  resources :shops, only: [:index, :show]

  resources :orders, only: [:index, :show] do
    resources :order_items, only: [:create, :destroy]
    post 'validate', to: 'orders#validate'
  end

  get 'cart', to: 'orders#cart'

  root to: 'pages#home'
end
