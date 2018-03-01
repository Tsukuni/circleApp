Rails.application.routes.draw do
  get 'advices/index'
  resources :languages
  resources :words
  root to: 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
