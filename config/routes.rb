Rails.application.routes.draw do
  get 'reviews/new'
  devise_for :users
  root to: "flats#index"

  resources :flats do
    collection do
      get :research
    end
    resources :bookings, only: [:new, :create] do
      member do
        get :approve
        get :reject
      end
    end
    get '/confirmation', to: 'bookings#confirmation', as: 'confirmation'
    get '/dashboard', to: 'bookings#dashboard', as: 'dashboard'
    resources :reviews, only: [:new, :create]
  end
end
