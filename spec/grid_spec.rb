require './lib/grid'

describe Grid do
	context 'Empty Grid' do
		let(:grid) { Grid.new 3 }

		it 'should have n to the 4th cells' do
			expect(grid.cells.count).to eq(81)
		end

		it 'should have 16 unsolved cells' do
			expect(grid.unsolved_cells.count).to eq(81)
		end

		it 'should not be solved' do
			expect(grid).not_to be_solved
		end
	end

	context 'solved grid' do
	end
end