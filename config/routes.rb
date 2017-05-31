Rails.application.routes.draw do
  devise_for :users
  root controller: :restaurants, action: :index

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :menus, only: [:show, :index, :create, :new]
  end

  namespace 'owners' do
    resources :restaurants, only: [:index, :show, :create, :new] do
      resources :menus, only: [:show, :index, :create, :new]
    end
  end

  get '/add_to_cart/:dish_id/:restaurant_id', to: 'carts#add_to_cart', as: 'add_to_cart'
end
