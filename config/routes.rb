Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :fishes, only: %i[index show new create] do
    resources :bookings, only: %i[:new :create]
  end
  get "pages", to: "pages#about"
  get "pages", to: "pages#my_bookings" do
    get "bookings/:id", to: "bookings#confirm"
    get "bookings/:id", to: "bookings#decline"
  end
end
