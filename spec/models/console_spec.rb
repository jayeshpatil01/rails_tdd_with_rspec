require 'rails_helper'

RSpec.describe Console, type: :model do
  subject { described_class.new(manufacturer: 'Nintendo', name: 'Wii') }
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

  describe '.nintentdo' do
    it 'returns the ActiveRecord::Relation if consoles manufactured by Nintendo' do
      wii = described_class.create(manufacturer: 'Nintendo', name: 'Wii')
      switch = described_class.create(manufacturer: 'Nintendo', name: 'Switch')
      described_class.create(manufacturer: 'Sony', name: 'PS4')

      expect(described_class.nintentdo).to contain_exactly(
        wii,
        switch
      )
    end
  end
end
