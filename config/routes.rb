Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  resources :plants do
    resources :transactions, only: :create
  end

  resources :users, only: :show
end
