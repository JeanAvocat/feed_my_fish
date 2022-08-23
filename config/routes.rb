Rails.application.routes.draw do
  get 'my_bookings/index'
  get 'bookings/show'
  get 'bookings/create'
  get 'bookings/confirm'
  get 'bookings/decline'
  get 'fishs/index'
  get 'fishs/show'
  get 'fishs/new'
  get 'fishs/create'
  get 'fishs/edit'
  get 'fishs/update'
  get 'fishs/destroy'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :fish do
    resources :bookings, only: [:create]
  end
  get "pages/about", to: "pages#about"
  resources :my_bookings, only: :index
  resources :bookings, only: [:show] do
    member do
      patch :confirm
      patch :decline
    end
  end
end
