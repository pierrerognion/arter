Rails.application.routes.draw do
  devise_for :users
  root to: 'artworks#index'
  resources :artworks do
    resources :bookings, except: [:destroy]
  end
  resources :bookings, only: [:destroy]
end
