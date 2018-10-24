Rails.application.routes.draw do

  get 'blogs/index'

  get 'blogs/genre'

  get 'blogs/show'

  get 'blogposts/index'

  get 'blogposts/new'

  get 'blogposts/edit'

  get 'blogposts/delete'

  get 'bloggenres/index'

  get 'bloggenres/new'

  get 'bloggenres/edit'

  get 'blogconfigs/index'

  get 'blogconfigs/edit'

  get 'messages/index'

  get 'messages/show'

  get 'messages/new'

  get 'messages/edit'

  get 'helo', to: 'helo#index'
  post 'helo', to: 'helo#index'

  get 'dengonban', to: 'dengonban#index'
  post 'dengonban', to: 'dengonban#index'
  
  get 'people/find'
  post 'people/find'
  resources :people
  
  resources :cards
  
  resources :messages
  
end
