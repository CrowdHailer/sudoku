require './lib/area'

describe Area do
	let(:cell1) { double :cell, value: nil }
	let(:cell2) { double :cell, value: 1 }
	let(:cell3) { double :cell, value: 2 }
	let(:area) { Area.new([cell1]) }
	let(:three_area) { Area.new([cell1,cell2,cell3]) }

	it 'should be initialised with cells' do
		expect(area.cells).to eq([cell1])
	end

	it 'return an empty array when all cells have nil value' do
		expect(area.cell_values).to eq([])
	end

	it 'should be able to return an array of all cell values' do
		expect(three_area.cell_values).to eq([1,2])
	end
end