Rails.application.routes.draw do
  resources :maskstores
  get 'map/index'
  resources :categories
  # root to: "categories#index"
  root to: "map#index"
end
