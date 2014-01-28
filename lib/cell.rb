class Cell
	def initialize allowed_values = [1]
		@allowed_values = allowed_values
		@value
	end
	
	attr_accessor :value
	attr_reader :allowed_values

	def solved?
		value
	end

end