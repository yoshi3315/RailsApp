Rails.application.routes.draw do

  resources :questionaries
  resources :answers
  resources :questions
  resources :mycontacts
  get 'blogs', to: 'blogs#index'
  get 'blogs/:id/genre', to: 'blogs#genre'
  get 'blogs/:id/:page/genre', to: 'blogs#genre'
  get 'blogs/:id/show', to: 'blogs#show'
  get 'blogs/:page', to: 'blogs#index'

  get 'blogposts/:id/delete', to: 'blogposts#delete'
  delete 'blogposts/:id/destroy', to: 'blogposts#destroy'
  resources :blogposts

  get 'bloggenres', to: 'bloggenres#index'
  get 'bloggenres/new'
  post 'bloggenres/create'
  get 'bloggenres/:id/edit', to: 'bloggenres#edit'
  patch 'bloggenres/:id/update', to: 'bloggenres#update'

  get 'blogconfigs', to: 'blogconfigs#index'
  get 'blogconfigs/edit'
  patch 'blogconfigs/update'

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
