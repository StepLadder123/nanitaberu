Rails.application.routes.draw do
  root to: 'rooms#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :rooms, only: [:index, :new, :create] do
    collection do
      get 'search'
      get 'join'
      get 'wait'
    end
  end
end
