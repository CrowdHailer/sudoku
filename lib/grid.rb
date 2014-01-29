class Grid
	def initialize
		@cells = Array.new(81) { |i| Cell.new self, i }
		cells.each { |cell| cell.meet_neighbours }
	end

	attr_reader :cells

	def populate puzzle
		cells.zip(puzzle.chars) do |cell, value|
			cell.value = (value != "0") ? value.to_i : nil
		end
	end

	def solve
		stuck = false
		while !solved? && !stuck
			starting_number = unsolved_count
			unsolved_cells.each { |cell| cell.update }
			progress = starting_number - unsolved_count
			stuck = (progress == 0)
		end
		puts 'stuck' unless solved?
		false
	end

	def unsolved_cells 
		cells.reject { |cell| cell.solved? }
	end

	def unsolved_count
		unsolved_cells.count
	end

	def solved?
		unsolved_count == 0
	end

	def to_s
		cells.map { |e| e.value }.join
	end

	def inspect
		rows = cells.each_slice(9).to_a
		rows = rows.map { |e| e.map { |e| e.value || " " } }
		strings = rows.map { |e| "|" + e.join(",") + "|" }

		"\n+" + "-"*17 +"+\n" + strings.join("\n") + "\n+" + "-"*17 + "+"
	end
end