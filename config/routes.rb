Rails.application.routes.draw do
  devise_for :users
  root to: 'artworks#index'
  resources :artworks
  resources :bookings
  # TODO: nester les bookings
end
