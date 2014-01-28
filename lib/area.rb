class Area
	def initialize cells
		@cells = cells
	end

	attr_reader :cells

	def cell_values
		cells.map { |cell| cell.value }.compact
	end
end