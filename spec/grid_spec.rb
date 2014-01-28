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
	end

	context 'solved grid' do
	end
end