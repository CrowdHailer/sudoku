class Grid
	def initialize
		@cells = Array.new(81) {|i| Cell.new i }
	end

	attr_reader :cells

	def populate puzzle_string
		puzzle = puzzle_string.chars
		self.cells.each.with_index do |cell, i|
			puzzle_value = puzzle[i].to_i
			cell.value = (puzzle_value == 0) ? nil : puzzle_value
		end
	end

	def unsolved_cells 
		cells.reject{ |cell| cell.solved? }
	end

	def solved?
		false
	end
end