Rails.application.routes.draw do
  devise_for :users
  resources :shelters do
    resources :bookings, only: [:index, :create, :edit, :update, :destroy, :new]
    resources :pets, only: [:new, :create]
  end

  get "/bookings", to: "bookings#index", as: :bookings
  root to: "shelters#index"
end

# added :new for testing
