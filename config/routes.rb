Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :fish, only: %i[index show new create] do
    resources :bookings, only: %i[:new :create]
  end
  get "pages/about", to: "pages#about"
  get "my_bookings", to: "my_bookings#index"
  resources :bookings, only: [:show] do
    member do
      patch :confirm
      patch :decline
    end
  end
end
