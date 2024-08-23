require 'rails_helper'

RSpec.describe Console, type: :model do
  let(:subject) { described_class.new(manufacturer: 'Nintendo', name: 'Wii') }
  describe 'name' do
    it 'must be present' do
      expect(subject).to be_valid
      subject.name = nil
      expect(subject).to_not be_valid
    end
  end

  describe 'manufacturer' do
    it 'must be present' do
      expect(subject).to be_valid
      subject.manufacturer = nil
      expect(subject).to_not be_valid
    end
  end

  describe '#fortmatted_name' do
    it 'returns manufacturer and name string' do
      expect(subject.fortmatted_name).to eq('Nintendo Wii')
    end
  end
end
