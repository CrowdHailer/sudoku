class Cell
	def initialize position
		@value
		@position = position
		@row = get_row_index position
	end
	
	attr_accessor :value, :position, :row

	def get_row_index position
		position / 9
	end
	# attr_reader :allowed_values, :areas

	# def solved?
	# 	value
	# end

	# def remaining_values
	# 	taken_values = areas.inject([]) do |taken_values, area|
	# 		taken_values += area.cell_values
	# 	end
	# 	allowed_values - taken_values
	# end

	# def update
	# 	self.value = remaining_values.first if remaining_values.count == 1
	# end

end