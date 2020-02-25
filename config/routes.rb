Rails.application.routes.draw do
  get 'user/show'
  # root to: 'pages#home'

  resources :plants, only: [:index, :show]
  resources :users, only: [:show]
end
