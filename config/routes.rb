Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "dashboard", to: "pages#dashboard"

  resources :heros, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
    # /heros/search
    collection do
      get :search
    end
  end

  resources :bookings, only: [:index]
end
