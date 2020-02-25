Rails.application.routes.draw do
  get 'user/show'
  # root to: 'pages#home'
  resources :plants, only: [:index, :show, :new, :create] do
    resources :transactions, only: [:new, :create]
  end

  resources :users, only: [:show]


end
