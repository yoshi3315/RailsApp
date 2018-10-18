Rails.application.routes.draw do
  get 'cards/index'

  get 'cards/show'

  get 'cards/add'

  get 'cards/edit'

  get 'people', to: 'people#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'helo', to: 'helo#index'
  post 'helo', to: 'helo#index'

  get 'dengonban', to: 'dengonban#index'
  post 'dengonban', to: 'dengonban#index'
  
  get 'people/add'
  post 'people/add', to: 'people#create'
  
  get 'people/:id', to: 'people#show'
  
  get 'people/edit/:id', to: 'people#edit'
  patch 'people/edit/:id', to: 'people#update'
  
  get 'people/delete/:id', to: 'people#delete'
  
end
