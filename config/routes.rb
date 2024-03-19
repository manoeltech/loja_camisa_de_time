Rails.application.routes.draw do
  namespace :admin do
    resources :categories
    root "dashboards#index"
    resources :products
    devise_for :users
  end
  devise_for :clients
  root "store_front#index"
end
