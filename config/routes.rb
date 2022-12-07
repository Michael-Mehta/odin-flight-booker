Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "flights#index"

  resources :flights
  resources :airports 
  resources :bookings

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
