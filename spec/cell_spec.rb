require './lib/cell'

describe Cell do
	
	let(:cell) { Cell.new []}

	it 'shold be initialised with no value' do
		expect(cell.value).to be_nil
	end

	it 'should be possible to set a value' do
		cell.value = 3
		expect(cell.value).to eq(3)
	end

	it 'should be solved if has a value' do
		cell.value = 5
		expect(cell).to be_solved
	end

	it 'should be initialised with allowed values, default 1' do
		expect(cell.allowed_values).to eq([1])
	end

	it 'should be initialised with allowed values' do
		cell = Cell.new([], (1..9))
		expect(cell.allowed_values).to eq((1..9).to_a)
	end

	it 'should know what areas it belongs too' do
		expect(cell.areas).to eq([])
	end

	it 'should be initialised with areas' do
		cell = Cell.new([:row,:col,:block],(1..4))
		expect(cell.areas).to eq([:row,:col,:block])
	end

	context 'one cell sudoku' do
		it 'should return possible values' do
			expect(cell.remaining_values).to eq([1])
		end

		it 'should update value when only one value remains' do
			cell.update_value
			expect(cell.value).to eq(1)
		end
	end
end