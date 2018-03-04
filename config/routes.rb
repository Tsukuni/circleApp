Rails.application.routes.draw do
  resources :fashion_ranks
  resources :trip_ranks
  resources :school_ranks
  resources :job_ranks
  resources :circle_ranks
  resources :exam_comments
  resources :exams
  resources :campus_ranks
  resources :campus_lives
  resources :capacities
  resources :date_places
  resources :loves
  resources :languages
  resources :words
  resources :university_words
  resources :introduce_university_words
  resources :sessions
  get 'adminpages/index'
  get 'advices/index'
  root to: 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
