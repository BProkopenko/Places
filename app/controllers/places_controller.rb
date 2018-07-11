class PlacesController < ApplicationController

	before_action :new_place
	before_action :new_like
	before_action :authenticate_user!, only: [:create, :edit, :update, :destroy]

	def index
		@places = Place.all.order("created_at DESC")
	end

	def my_places
		@places = current_user.places.order("created_at DESC")
	end

	def show
		@place = Place.find(params[:id])
	end

	def create
		@place = current_user.places.build(place_params)
		if @place.save
			flash[:success] = "Place crated"
			redirect_to request.referrer || root_url
		else
			errors = 'error'.pluralize(@place.errors.count)
			flash[:danger] = "The form contains #{@place.errors.count} #{errors} #{@place.errors.full_messages}"
			redirect_to root_url
		end
	end

	def edit
		@place = Place.find(params[:id])
	end

	def update
		@place = Place.find(params[:id])
		if @place.update_attributes(place_params)
			flash[:success] = "Place updated"
			redirect_to request.referrer || root_url
		else
			render 'edit'
		end
	end

	def destroy
		Place.find(params[:id]).destroy
		flash[:success] = "Place deleted"
		redirect_to root_url
	end

	private

	def place_params
		params.require(:place).permit(:name, :description, :picture)
	end
end