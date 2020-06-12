Rails.application.routes.draw do
  resources :covid19_clinics
  resources :maskstores
  get 'map/index'
  resources :categories
  # root to: "categories#index"
  root to: "map#index"
end
