require './lib/grid'

describe Grid do
	let(:grid) { Grid.new }

	it 'should have 81 cells' do
		expect(grid.cells.count).to eq(81)
	end

	it 'should have 81 unsolved cells' do
		expect(grid.unsolved_cells.count).to eq(81)
	end
end