require './lib/grid'

describe Grid do
	# context 'Empty Grid' do
	# 	let(:grid) { Grid.new 2 }

	# 	it 'should have n to the 4th cells' do
	# 		expect(grid.cells.count).to eq(16)
	# 	end

	# 	it 'should have 16 unsolved cells' do
	# 		expect(grid.unsolved_cells.count).to eq(16)
	# 	end

	# 	it 'should not be solved' do
	# 		expect(grid).not_to be_solved
	# 	end

	# 	it 'should create 4 area objects in rows' do
	# 		expect(grid.rows).to eq(3)
	# 	end
	# end

	# context 'solvable grid - requires working with tested cell class' do
	# 	let(:puzzle) { '015003002000100906270068430490002017501040380003905000900081040860070025037204600'}
	# 	let(:grid) { Grid.new 3 }

	# 	it 'should be possible to initalize a Grid' do
	# 		expect(grid.populate(puzzle)).to be_true
	# 	end

	# 	it 'should create a cell without value first' do
	# 		grid.populate(puzzle)
	# 		expect(grid.cells[0].value).to eq(nil)
	# 	end

	# 	it 'should create a second cell with a value of 1' do
	# 		grid.populate(puzzle)
	# 		expect(grid.cells[1].value).to eq(1)
	# 	end
	# end
end