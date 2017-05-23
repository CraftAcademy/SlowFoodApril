Rails.application.routes.draw do
  devise_for :users
  root controller: :restaurants, action: :index
  resources :restaurants, only: [:show]
end
