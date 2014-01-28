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

		it 'should be possible to initalize a Grid' do
			expect(grid.populate(puzzle)).to be_true
		end

		it 'should create a cell without value first' do
			grid.populate(puzzle)
			expect(grid.cells[0].value).to eq(nil)
		end

		it 'should create a second cell with a value of 1' do
			grid.populate(puzzle)
			expect(grid.cells[1].value).to eq(1)
		end

		it 'should be possible to inspect' do
			expect(grid.inspect).to eq(1)
		end
	end
end