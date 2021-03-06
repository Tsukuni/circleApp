Rails.application.routes.draw do
  resources :friends
  resources :life_rankings
  resources :life_pages
  resources :advertisements
  get 'ori_event_page/index'
  get 'ori_event_page/:id', to: 'ori_event_page#show'


  resources :ori_pages
  get 'unisna/index'
  get 'unisna/men/:id', to: 'unisna#men'
  get 'unisna/women/:id', to: 'unisna#women'

  resources :map_urls
  get 'dosihsha_ranks/index'

  get 'maps/kyotanabe'
  get 'maps/imadegawa'
  get 'maps/index'
  get 'maps/karasuma'
  get 'maps/kanbaikan'
  get 'maps/shinmachi'

  get 'advices/capacities'
  get 'advices/languages'
  get 'advices/words'
  get 'advices/exams'
  get 'advices/welcome'
  get 'advices/loves'
  get 'advices/life'
  get 'advices/friend'

  resources :women_snaps
  resources :men_snaps
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
  get '*path', controller: 'application', action: 'render_404'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
