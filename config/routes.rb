Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, onry: [:new, :create, :destroy] do
    resources :messages, only: [:index, :create]
  end
end
