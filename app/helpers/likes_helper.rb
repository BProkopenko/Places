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

	def like_active_for?(place_id)
		@place = place_id
		@place_likes = @place.likes
		@user_place_likes = @place_likes.where(user_id: current_user.id)
		@user_place_likes.empty?
	end
end
