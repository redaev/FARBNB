Rails.application.routes.draw do
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
  end
end
