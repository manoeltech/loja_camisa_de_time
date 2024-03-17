Rails.application.routes.draw do
  namespace :admin do
    root "dashboards#index"
    resources :products
    resources :clients
  end
  devise_for :users
  root "store_front#index"
end
