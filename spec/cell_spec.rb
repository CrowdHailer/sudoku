require './lib/cell'

describe Cell do
	let(:grid) { double :grid }
	let(:cell0) { Cell.new(grid, 0) }
	let(:cell17) { Cell.new(grid, 17) }
	let(:cell3) { Cell.new(grid, 3) }

	it 'shold be initialised with no value' do
		expect(cell0.value).to be_nil
	end

	it 'shold be initialised with a position' do
		expect(cell0.position).to eq(0)
	end

	it 'should know its row number' do
		expect(cell0.row).to eq(0)
	end

	it 'should know its row number' do
		expect(cell17.row).to eq(1)
	end

	it 'should know its column number' do
		expect(cell0.column).to eq(0)
	end

	it 'should know its column number' do
		expect(cell17.column).to eq(8)
	end

	it 'should know its box coords' do
		expect(cell0.box_coords).to eq([0,0])
	end

	it 'should know its box coords' do
		expect(cell17.box_coords).to eq([0,2])
	end

	it 'should be possible to set a value' do
		cell0.value = 3
		expect(cell0.value).to eq(3)
	end

	it 'should be solved if has a value' do
		cell0.value = 5
		expect(cell0).to be_solved
	end

	it 'should limit to neighbours that it shares a position with' do
		grid2 = double :grid, cells: [cell0, cell3, cell17]
		cell4 = Cell.new(grid2, 4)
		cell4.meet_neighbours
		expect(cell4.neighbours).to eq([cell0, cell3])
	end

	it 'should return remaining possible values' do
		grid2 = double :grid, cells: [cell0, cell3, cell17]
		cell4 = Cell.new(grid2, 4)
		cell4.meet_neighbours
		cell0.value = 7
		expect(cell4.remaining_values).to eq((1..9).to_a - [7])
	end

	# it 'should raise and error if no values remain' do
	# 	cell0.stub(:remaining_values){ [] }
	# 	expect{ cell0.update }.to raise_error
	# end

end