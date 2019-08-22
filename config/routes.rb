Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/profile", to: "dashboard#profile"
  resources :artworks do
    member do
      post 'reset_availability'
    end
    resources :bookings, except: [:destroy] do
      member do
        patch "/accepted!", to: "bookings#accepted!", as: :accepted
        patch "/declined!", to: "bookings#declined!", as: :declined
      end
    end
  end
  resources :bookings, only: [:destroy]
end
