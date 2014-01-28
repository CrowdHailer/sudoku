require './lib/area'

describe Area do
	let(:cell1) { double :cell }
	let(:area) { Area.new([cell1]) }

	it 'should be initialised with cells' do
		expect(area.cells).to eq([cell1])
	end
end