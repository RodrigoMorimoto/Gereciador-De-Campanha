Rails.application.routes.draw do
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
