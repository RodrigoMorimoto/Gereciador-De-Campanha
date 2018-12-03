Rails.application.routes.draw do
  get 'sessions/new'


  get    ''   => 'sessions#new'
  get    'sign_in'   => 'sessions#new'
  post   'sign_in'   => 'sessions#create'
  delete 'sign_out'  => 'sessions#destroy'
  
  resources :mestres
  resources :assets
  resources :correlations
  resources :attributes
  resources :attribute_values
  resources :sheets
  resources :participations
  resources :games
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
