Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/profile", to: "dashboard#profile"
  resources :artworks do
    resources :bookings, except: [:destroy]
  end
  resources :bookings, only: [:destroy]
end
