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
      resources :menus, only: [:show, :index, :create, :new]
    end
  end
end
