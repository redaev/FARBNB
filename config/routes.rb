Rails.application.routes.draw do
  get 'reviews/new'
  devise_for :users
  root to: "flats#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :flats do
    collection do
      get :research
    end
    resources :bookings, only: [:new, :create]
    get '/confirmation', to: 'bookings#confirmation', as: 'confirmation'
    resources :reviews, only: [:new, :create]
  end
end
