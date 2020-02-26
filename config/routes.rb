Rails.application.routes.draw do
  root to: 'pages#home'
  resources :plants, only: [:index, :show] do
    resources :transactions, only: [:create]
  end

  resources :users, only: [:show, :new, :create] do
    resources :plants, except: [:index, :show]
  end


end
