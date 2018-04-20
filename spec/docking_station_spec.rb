require 'docking_station'
require 'bike'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  describe '#release_bike' do
    it 'releases a working bike' do
      bike = Bike.new
      expect(bike).to be_working
    end
    it 'raises an error when dock is empty' do
      expect { subject.release_bike }.to raise_error("No bikes available")
    end
  end

  describe '#dock' do
    it 'docks bike' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
    end
    it 'raises an error message when dock is full' do
      bike = Bike.new
      subject.dock(bike)
      expect { subject.capacity.times { subject.dock(bike) } }.to raise_error("Dock is full")
    end
  end

describe 'initialization' do
  it 'has a variable capacity' do
    docking_station = DockingStation.new(50)
    50.times { docking_station.dock Bike.new }
    expect { docking_station.dock Bike.new }.to raise_error "Dock is full"
  end
end

describe 'initalization' do
  subject { DockingStation.new }
  let(:bike) { Bike.new }
  it 'has a default capacity' do
    described_class::DEFAULT_CAPACITY.times do
      subject.dock(bike)
    end
    expect{ subject.dock(bike) }.to raise_error "Dock is full"
  end
end


  describe '#bike' do
    it 'returns docked bike' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
    end
  end

end
