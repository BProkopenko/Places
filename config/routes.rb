Rails.application.routes.draw do
	get 'favorites' => 'likes#favorite'
	resources :likes, only: [:new, :create, :destroy]
	devise_for :users
	resources :places, only: [:index, :my_places, :show, :create, :edit]
	get 'my_places' => 'places#my_places'
	root 'places#index'
end