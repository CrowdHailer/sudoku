class Grid
	def initialize
		@cells = Array.new(81) { |i| Cell.new self, i }
		cells.each { |cell| cell.meet_neighbours }
		@last_acceptable = []
	end

	attr_reader :cells

	def populate puzzle
		self and cells.zip(puzzle.chars) do |cell, value|
			cell.value = (value != "0") ? value.to_i : nil
		end
		
	end

	def solve starting_number = unsolved_count
		unsolved_cells.each { |cell| cell.update }
		return if solved?
		starting_number > unsolved_count ? solve : try_harder
	end

	def try_harder
		blank_cell = unsolved_cells.sort_by {|i| i.remaining_values.count}[0]
		candidates = blank_cell.remaining_values
		candidates.shuffle.each do |candidate|
			blank_cell.value = candidate
			test = Grid.new
			test.populate self.to_s
			test.solve
			!self.populate test.to_s and return if test.solved?
		end
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
		cells.map { |e| e.value || 0 }.join
	end

	def inspect
		rows = cells.each_slice(9).to_a
		rows = rows.map { |e| e.map { |e| e.value || " " } }
		strings = rows.map { |e| "|" + e.join(",") + "|" }

		"\n+" + "-"*17 +"+\n" + strings.join("\n") + "\n+" + "-"*17 + "+"
	end
end