module PlacesHelper
	def add_place(params)
		Place.create(params)
	end
end
