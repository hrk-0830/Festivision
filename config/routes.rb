Rails.application.routes.draw do
  devise_for :users
  resources :events, only: [:new,:index,:show,:edit,:create,:destroy,:update] do
    resources :comments,only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end
  root to: 'events#index'
  resources :users, only: [:show,:edit,:update] do
    resource :relationships, only: [:create, :destroy]
    get :followings, on: :member
    get :followers, on: :member
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
