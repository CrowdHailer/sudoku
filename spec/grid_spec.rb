require './lib/grid'

describe Grid do
	 context 'Empty Grid' do
	 	let(:grid) { Grid.new }

		it 'should have 81 cells' do
			expect(grid.cells.count).to eq(81)
		end

		it 'should have 81 unsolved cells' do
			expect(grid.unsolved_cells.count).to eq(81)
		end

		it 'should not be solved' do
			expect(grid).not_to be_solved
		end

		it 'should be possible to populate the grid' do
			grid.populate("1"*81)
			expect(grid.cells[0].value).to eq(1)
		end

		# it 'it should be solvable' do
		# 	grid.solve
		# 	puts grid.inspect
		# 	expect(grid.inspect).to eq(1)
		# end

	 end

	 context 'full grid'do
	 	let(:puzzle) { '1'*81 }
	 	let(:grid) do
	 		this_grid = Grid.new
	 		this_grid.populate(puzzle)
	 		this_grid
	 	end

	 	it 'should have 0 unsolved cells' do
	 		expect(grid.unsolved_cells).to eq([])
	 	end

	 	it 'should be solved' do
	 		expect(grid).to be_solved
	 	end
	 end

	context 'solvable grid - requires working with tested cell class' do
		let(:puzzle) { '015003002000100906270068430490002017501040380003905000900081040860070025037204600'}
		let(:grid) do
	 		this_grid = Grid.new
	 		this_grid.populate(puzzle)
	 		this_grid
	 	end

		it 'should create a cell without value first' do
			grid.populate(puzzle)
			expect(grid.cells[0].value).to eq(nil)
		end

		it 'should create a second cell with a value of 1' do
			grid.populate(puzzle)
			expect(grid.cells[1].value).to eq(1)
		end

		it 'should set up neighbour relations in cells' do |variable|
			expect(grid.cells[0].neighbours.count).to eq(21)
		end

		it 'should be possible to inspect' do
			expect(grid.inspect).to eq("\n+-----------------+\n| ,1,5, , ,3, , ,2|\n| , , ,1, , ,9, ,6|\n|2,7, , ,6,8,4,3, |\n|4,9, , , ,2, ,1,7|\n|5, ,1, ,4, ,3,8, |\n| , ,3,9, ,5, , , |\n|9, , , ,8,1, ,4, |\n|8,6, , ,7, , ,2,5|\n| ,3,7,2, ,4,6, , |\n+-----------------+")
		end

		it 'should be able to solve the puzzle' do
			grid.solve
			expect(grid.to_s).to eq("615493872348127956279568431496832517521746389783915264952681743864379125137254698")
		end
	end

	context 'hard solvable grid'do
		let(:puzzle) { '800000000003600000070090200050007000000045700000100030001000068008500010090000400' }
		let(:grid) do
	 		this_grid = Grid.new
	 		this_grid.populate(puzzle)
	 		this_grid
	 	end

	 	it 'should not be easily solvable' do
	 		grid.solve
	 		expect(grid.to_s).to eq(puzzle)
	 	end

	 	# it 'should be  solvable' do
	 	# 	grid.solve
	 	# 	expect(grid.to_s).to eq(1)
	 	# end
	end
end