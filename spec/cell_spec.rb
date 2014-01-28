require './lib/cell'

describe Cell do
	
	let(:cell) { Cell.new }

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
end