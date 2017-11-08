Rails.application.routes.draw do
  resources :invoices
  resources :containers
  resources :shipping_lines
  get 'hi', to: 'msgs#test'
end
