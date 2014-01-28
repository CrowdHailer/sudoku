class Grid
	def initialize
		@cells = [:cells]*81
	end

	attr_reader :cells

	def unsolved_cells 
		cells
	end

	def solved?
		false
	end
end