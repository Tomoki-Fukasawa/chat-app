Rails.application.routes.draw do
  #get 'rooms/index'
  devise_for :users
  root to: "rooms#index"
  resources :users, only: [:edit,:update]
  resources :rooms, only: [:new,:create] do
    resources :messages, only:[ :create,:index,:new,:save]
  end
end
