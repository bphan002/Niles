Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static_pages#root"

  namespace :api, defaults: {format: :json } do
    resources :users, only: [:create, :show]
    resources :categories, only: [:index, :show]
    resources :products, only: [:index, :show]
    resources :reviews, only: [:create, :show, :update, :destroy ]
    resources :cart_items, only: [:index, :create, :show, :update, :destroy]
    resource :session, only: [:create, :destroy]
  end
end
