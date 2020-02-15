Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'uf', to: 'units#index', as: 'units'
  get 'uf/:client/:fecha', to: 'units#show', as: 'unit'
  resources :requests, path: :client


end
