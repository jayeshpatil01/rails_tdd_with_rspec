require 'rails_helper'

RSpec.describe 'Status requests', type: :request do
  describe 'GET /api/status' do
    it 'returns a status message' do
      get '/api/status'
      expect(response_json['status']).to eq('ok')
      expect(response.status).to eq(200)
    end
  end
end
