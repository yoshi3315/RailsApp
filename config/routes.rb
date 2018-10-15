Rails.application.routes.draw do
  get 'dengonban/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'helo' => 'helo#index'
  #get 'helo/index'
  
  #post 'helo' => 'helo#index'
  #post 'helo/index'
  
end
