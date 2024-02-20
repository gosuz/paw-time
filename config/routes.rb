Rails.application.routes.draw do
  devise_for :users
  resource :shelters do
    resource :bookings, only: [:index, :add, :edit, :destroy]
  end
  root to: "shelters#index"
end
