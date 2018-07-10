module PlacesHelper

	def new_place
		@place = Place.new
	end

	def col_size
		["col1", "col2", "col3", "col4", "col5"].sample
	end

	def place_description
		"Example: Costa Rica, officially the Republic of Costa Rica (Spanish: República de Costa Rica),
is a country in Central America, bordered by Nicaragua to the north, Panama to the southeast,
the Pacific Ocean to the west, the Caribbean Sea to the east, and Ecuador to the south of Cocos Island."
	end

	def short_descr(place)
		truncate(place)
	end

	def press_button
		if user_signed_in?
			"show-places-form"
		else
			"show-sign-in-form"
		end
	end

	def form_class
		if user_signed_in?
			"places-form"
		else
			"sign-in-form"
		end
	end
end
