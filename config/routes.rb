Rails.application.routes.draw do
  root to: 'artworks#index'
  resources :artworks
  resources :users
  resources :bookings
end
