Rails.application.routes.draw do

  get 'helo', to: 'helo#index'
  post 'helo', to: 'helo#index'

  get 'dengonban', to: 'dengonban#index'
  post 'dengonban', to: 'dengonban#index'
  
  resources :people
  get 'people/find'
  post 'people/find'
  
  resources :cards
  
end
