Rails.application.routes.draw do
  get 'user/show'
  # root to: 'pages#home'

  resources :users, only: [:new, :show] do
    resources :plants, only: [:new, :edit, :destroy, :create, :update]
  end
  resources :plants , only: [:index, :show]
end
