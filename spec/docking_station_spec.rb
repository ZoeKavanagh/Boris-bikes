require 'docking_station'
require 'bike'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  describe '#release_bike' do
    it 'releases a working bike' do
      bike = subject.release_bike
      expect(bike).to be_working
    end
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  describe '#dock' do
    it 'shows a docked bike' do
      bike = subject.release_bike
      expect(subject.dock(bike)).to eq bike
    end
  end

end
