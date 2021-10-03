Rails.application.routes.draw do
  root to: 'rooms#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :rooms, only: [:index, :new, :create, :show] do
    collection do
      get 'search'
      get 'join'
      get 'wait'
      get 'cancel'
      get 'approve/:id', to: 'rooms#approve', as: :approve
      get 'reject/:id', to: 'rooms#reject', as: :reject
    end
    resources :menus, only: [:new, :create]
    resources :schedules, only: [:new, :create]
  end
end
