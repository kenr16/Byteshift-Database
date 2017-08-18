Rails.application.routes.draw do
  resources :visits
  resources :beacons
  resources :users

  get 'user/random' => 'users#random'
  get 'user/search' => 'users#search'

  get 'beacon/search' => 'beacons#search'

  get 'visit/search' => 'visits#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
