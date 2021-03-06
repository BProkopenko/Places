module LikesHelper

	def new_like
		@like = Like.new
	end

	def match_likes?
		@likes = current_user.likes
		@like = current_user.likes.build(like_params)
		like_in_likes = @likes.where(user_id: @like.user.id, place_id: @like.place.id)
		!like_in_likes.empty?
	end

	def like_active_for?(place)
		@current_place = place
		@place_likes = @current_place.likes
		@user_place_likes = @place_likes.where(user_id: current_user.id)
		@user_place_likes.empty?
	end

	def unlike(place_id)
		@unlike = current_user.likes.find_by(place_id: place_id)
	end
end