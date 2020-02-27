Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }

  root to: 'pages#home'
  resources :plants do
    resources :transactions, only: [:new, :create]
  end

  resources :users, only: :show
end
