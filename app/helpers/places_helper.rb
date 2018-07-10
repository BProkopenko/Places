module PlacesHelper
	def add_place(params)
		Place.create(params)
	end
	def col_size
		["col1","col2","col3","col4","col5"].sample
	end
	def place_description
		"Example: Costa Rica, officially the Republic of Costa Rica (Spanish: República de Costa Rica),
is a country in Central America, bordered by Nicaragua to the north, Panama to the southeast,
the Pacific Ocean to the west, the Caribbean Sea to the east, and Ecuador to the south of Cocos Island."
	end
	def short_descr(place)
		truncate(place)
	end

end
