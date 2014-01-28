class Cell
	def initialize position
		@value
		@position = position
		@row = get_row_index position
		@column = get_column_index position
	end
	
	attr_accessor :value, :position, :row, :column

	def get_row_index position
		position / 9
	end

	def get_column_index position
		position % 9
	end

	def box_coords
		[row/3, column/3]
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