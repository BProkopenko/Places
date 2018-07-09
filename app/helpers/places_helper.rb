module PlacesHelper
	def add_place(params)
		Place.create(params)
	end

	def random_class
		["small","middle","large"].sample
	end
end
