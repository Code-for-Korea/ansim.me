Rails.application.routes.draw do
  get 'map/index'
  resources :categories
  # root to: "categories#index"
  root to: "map#index"
end
