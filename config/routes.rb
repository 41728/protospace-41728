Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'

  get "up" => "rails/health#show", as: :rails_health_check

  resources :prototypes, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
    resources :comments, only: [:create]
  end

  resources :users, only: [:show] 

  root to: "prototypes#index"
end