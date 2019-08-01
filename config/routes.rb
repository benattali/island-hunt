Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :islands do
    resources :bookings, only: [:new, :create] do
      member do
        resources :transports, only: [:index, :show, :new, :create]
      end
    end
  end


resources :bookings, only: [:show, :destroy, :index]
end
