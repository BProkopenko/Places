class PlacesController < ApplicationController

	def index
		@place = Place.new
		@places = Place.all
	end

	def create
		@place = add_place(place_params)
		if @place.save
			flash[:success] = "Place crated"
			redirect_to root_url
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
			redirect_to @place
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
