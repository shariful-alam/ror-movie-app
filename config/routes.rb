Rails.application.routes.draw do
  root to: "admin_users#dashboard"
  devise_for :admin_users

  get '/admin', to: 'admin_users#dashboard', as: :admin

  namespace :api do
    resources :movies
    resources :users
  end

  resources :movies
  resources :users, only: [:index, :show, :destroy]
end
