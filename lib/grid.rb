class Grid
	def initialize
		@cells = [:cells]*81
	end

	attr_reader :cells

	def unsolved_cells 
		cells
	end
end