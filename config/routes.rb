Rails.application.routes.draw do
  devise_for :users
  root controller: :restaurants, action: :index

  namespace :api do
    namespace :v0 do
      resources :hello, only: [:index], constraints: { format: 'json' }
    end
  end

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :menus, only: [:show, :index, :create, :new]
  end

  namespace 'owners' do
    resources :restaurants, only: [:index, :show, :create, :new] do
      resources :menus, only: [:show, :index, :create, :new, :update, :edit, :destroy] do
        resources :dishes, only: [:new, :create, :show, :index]
      end
    end
  end

  get '/add_to_cart/:dish_id/:restaurant_id', to: 'carts#add_to_cart', as: 'add_to_cart'
  get '/cart', to: 'carts#checkout', as: 'checkout'
  get '/empty_cart', to: 'carts#empty_cart', as: 'empty_cart'
end
