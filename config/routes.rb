Rails.application.routes.draw do
  devise_for :users
  resources :shelters do
    resources :bookings, only: [:index, :add, :edit, :destroy]
  end
  root to: "shelters#index"
end
