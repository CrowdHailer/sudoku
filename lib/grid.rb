class Grid
	def initialize
		@cells = Array.new(81) {|i| Cell.new self, i }
		cells.each {|cell| cell.meet_neighbours}
	end

	attr_reader :cells

	def populate puzzle_string
		puzzle = puzzle_string.chars
		self.cells.each.with_index do |cell, i|
			puzzle_value = puzzle[i].to_i
			cell.value = (puzzle_value == 0) ? nil : puzzle_value
		end
	end

	def solve
		while !solved?
			unsolved_cells.each do |cell|
				cell.update
			end
		end
	end

	def unsolved_cells 
		cells.reject{ |cell| cell.solved? }
	end

	def solved?
		unsolved_cells.count == 0
	end

	def to_s
		cells.map { |e| e.value }.join
	end

	def inspect
		rows = cells.each_slice(9).to_a
		rows = rows.map { |e| e.map { |e| e.value || 0 }}
		strings = rows.map{|e| "|" + e.join(",") + "|"}

		"-"*19 +"\n" + strings.join("\n") + "\n" + "-"*19
	end
end