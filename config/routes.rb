Rails.application.routes.draw do
  devise_for :users
  root to: "shelters#index"
  resources :shelters do
    resources :bookings, only: [:create]
    resources :pets, only: [:new, :create]
  end

  resources :bookings, only: [:index, :update, :edit, :destroy, :create]

end
