class Cell
	ALLOWED_VALUES = (1..9).to_a

	def initialize grid, position
		@grid = grid
		@position = position
		@neighbours = []
	end
	
	attr_reader :position, :grid
	attr_accessor :value, :neighbours

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

	def meet_neighbours
		self.neighbours = grid.cells.select do |other|
			self.row == other.row || self.column == other.column || self.box_coords == other.box_coords
		end
	end

	def remaining_values
		ALLOWED_VALUES - neighbours.map { |e| e.value }
	end

	def update
		candidates = remaining_values.count
		# raise 'No possible values left' if candidates == 0
		self.value = remaining_values.first if candidates == 1
	end

	def to_s
		"Cell at #{position}"
	end

	def inspect
		"Cell at #{position}"
	end

end