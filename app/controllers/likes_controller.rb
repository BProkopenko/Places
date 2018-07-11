class LikesController < ApplicationController
	before_action :new_place
	before_action :new_like, only: [:create, :favorite]
	before_action :authenticate_user!

	def favorite
		@favorites = current_user.likes.order("created_at DESC")
		@places = Array.new
		@favorites.each do |favorite|
			@places << favorite.place
		end
	end

	def create
		if match_likes?
			flash[:notice] = "Already liked!"
			redirect_to request.referrer || root_url
		else
			if @like.save
				flash[:success] = "Added to Favorites"
				redirect_to request.referrer || root_url
			else
				errors = 'error'.pluralize(@like.errors.count)
				flash[:danger] = "The form contains #{@like.errors.count} #{errors} #{@like.errors.full_messages}"
				redirect_to root_url
			end
		end
	end

	private

	def like_params
		params.require(:like).permit(:place_id)
	end
end
