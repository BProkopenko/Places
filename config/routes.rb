Rails.application.routes.draw do
  devise_for :users
  resources :places
  get 'my_places' => 'places#my_places'
  root 'places#index'
end
