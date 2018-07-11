Rails.application.routes.draw do
	get 'favorites' => 'likes#favorite'
	resources :likes, only: [:new, :create, :edit, :update]
	devise_for :users
	resources :places
	get 'my_places' => 'places#my_places'
	root 'places#index'
end