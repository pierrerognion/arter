Rails.application.routes.draw do
  root to: 'artworks#index'
  resources :artworks
  resources :bookings
  # TODO: nester les bookings
end
