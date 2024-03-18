Rails.application.routes.draw do
  devise_for :clients
  namespace :admin do
    root "dashboards#index"
    resources :products
    end
  devise_for :users
  root "store_front#index"
end
