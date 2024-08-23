require 'rails_helper'

RSpec.describe 'Console requests', type: :request do
  describe 'GET /consoles' do
    it 'returns an array of some consoles' do
      get '/consoles'
      consoles = response_json['consoles'].map { |console| console['name'] }
      expect(consoles).to include(
        'NES',
        'SNES',
        'Wii',
        'Genesis',
        'Xbox',
        'Switch',
        'PS1',
        'PS2'
      )
    end

    it 'supports specifying consoles for a specific manufacturer' do
      get '/consoles', params: { manufacturer: 'Nintendo' }

      consoles = response_json['consoles'].map { |console| console['name'] }
      expect(consoles).to contain_exactly(
        'NES',
        'SNES',
        'Wii',
        'Switch'
      )
    end
  end
end