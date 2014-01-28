class Cell
	def initialize position
		@value
		@position = position
	end
	
	attr_reader :position
	attr_accessor :value, :position

	def row 
		position / 9
	end

	def column
		position % 9
	end

	def box_coords
		[row/3, column/3]
	end

	def solved?
		value
	end

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