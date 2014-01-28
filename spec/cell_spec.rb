require './lib/cell'

describe Cell do
	
	let(:cell0) { Cell.new 0}
	let(:cell18) { Cell.new 17 }

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
		expect(cell18.row).to eq(1)
	end

	it 'should know its column number' do
		expect(cell0.column).to eq(0)
	end

	it 'should know its column number' do
		expect(cell18.column).to eq(8)
	end

	it 'should know its box coords' do
		expect(cell0.box_coords).to eq([0,0])
	end

	it 'should know its box coords' do
		expect(cell18.box_coords).to eq([0,2])
	end

	it 'should be possible to set a value' do
		cell0.value = 3
		expect(cell0.value).to eq(3)
	end

	it 'should be solved if has a value' do
		cell0.value = 5
		expect(cell0).to be_solved
	end

	# it 'should be initialised with allowed values, default 1' do
	# 	expect(cell.allowed_values).to eq([1])
	# end

	# it 'should be initialised with allowed values' do
	# 	cell = Cell.new([], (1..9))
	# 	expect(cell.allowed_values).to eq((1..9).to_a)
	# end

	# it 'should know what areas it belongs too' do
	# 	expect(cell.areas).to eq([])
	# end

	# it 'should be initialised with areas' do
	# 	cell = Cell.new([:row,:col,:block],(1..4))
	# 	expect(cell.areas).to eq([:row,:col,:block])
	# end

	# context 'one cell sudoku' do
	# 	it 'should return possible values' do
	# 		expect(cell.remaining_values).to eq([1])
	# 	end

	# 	it 'should update value when only one value remains' do
	# 		cell.update
	# 		expect(cell.value).to eq(1)
	# 	end
	# end

	# context 'one row of three' do
	# 	let(:row) { double :row, cell_values: [3] }
	# 	let(:cell) { Cell.new([row],(1..3))}

	# 	it 'should call the cell_values method on every area it is a member of' do
	# 		expect(row).to receive(:cell_values)
	# 		cell.update
	# 	end

	# 	it 'should not update value if remaining values has more than 1 entry' do
	# 		cell.update
	# 		expect(cell.remaining_values).to eq([1,2])
	# 	end

	# 	it 'should return false if value did not update' do
	# 		expect(cell.update).to be_false
	# 	end

	# 	let(:solvable_row) { double :row, cell_values: [2,3] }
	# 	let(:solvable_cell) { Cell.new([solvable_row],(1..3))}

	# 	it 'should update value if remaining values has only one entry' do
	# 		solvable_cell.update
	# 		expect(solvable_cell.value).to eq(1)
	# 	end

	# 	it 'should return true if value did update' do
	# 		expect(solvable_cell.update).to be_true
	# 	end

	# end
end