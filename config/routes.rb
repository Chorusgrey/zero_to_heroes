Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :heroes, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
    # /heroes/search
    collection do
      get :search
    end
  end

  resources :bookings, only: [:index]
end
