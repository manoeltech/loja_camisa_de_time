Rails.application.routes.draw do
  namespace :admin do
    root "dashboards#index"
    devise_for :users
    resources :products
    resources :clients
  end
  root "store_front#index"
end
