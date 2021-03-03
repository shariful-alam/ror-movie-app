Rails.application.routes.draw do
  root to: "admin_users#dashboard"
  devise_for :admin_users

  namespace :api do
    resources :movies
    resources :users, only: [:create]
    get '/:username/favorite_movies', to: 'users#favorite_movies'
    post '/movies/:id/set_favorite', to: 'movies#set_favorite'
  end

  namespace :admin do
    resources :movies
    resources :users, only: [:index, :show, :destroy]
  end
end
