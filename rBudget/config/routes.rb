Rails.application.routes.draw do
  get 'transactions/create'
  get 'transactions/destroy'

  resources :transactions

  get 'budget/show'
  root to: 'budget#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
