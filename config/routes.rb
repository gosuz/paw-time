Rails.application.routes.draw do
  devise_for :users
  resources :shelters do
    resources :bookings, only: [:create, :edit, :update, :destroy, :new]
    resources :pets, only: [:new, :create]
  end

  resources :bookings, only: [:index]
  root to: "shelters#index"
end
