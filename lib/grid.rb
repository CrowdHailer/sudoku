class Grid
	def initialize order
		@cells = [:cells]* (order**4)
	end

	attr_reader :cells

	def unsolved_cells 
		cells
	end

	def solved?
		false
	end
end