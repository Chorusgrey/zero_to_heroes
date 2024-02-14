Rails.application.routes.draw do
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check
  root to: "heroes#home"

  resources :heroes, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:index]
end
