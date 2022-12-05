Rails.application.routes.draw do

  resources :apartments, only:[:index, :show, :create, :update, :destroy]

  resources :tenants, only:[:index, :show, :create, :update, :destroy]

  resources :leases, only:[:index, :show, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
