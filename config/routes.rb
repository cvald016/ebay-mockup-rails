Rails.application.routes.draw do
  resources :products, only: [:index, :new, :create, :destroy]

  root 'products#index'

  get 'products/index' => 'products#index'

  get 'products/edit' => 'products#edit'


end
