Rails.application.routes.draw do
  root "management_center/order_pending#new"

  namespace :management_center do
    resources :order_pending, only: %i[index show new create update]
    resources :order_in_progress, controller: 'order_in_progress', only: %i[index create show update]
    resources :order_completed, controller: 'order_completed', only: %i[index create show update]
    resources :order_all, only: %i[index]
  end
end
