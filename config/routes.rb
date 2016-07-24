Rails.application.routes.draw do
  get 'home/index'
  get 'home/about'

  root to: 'home#index'

  resources :photos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
