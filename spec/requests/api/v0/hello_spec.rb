require 'rails_helper'

RSpec.describe Api::V0::HelloController, type: :request do
  describe 'GET /v0/hello' do
    it 'should return Hi' do
      get '/api/v0/hello'

      expect(response.status).to eq 200
      expect(response_json['message']).to eq 'Hi'
    end
  end
end
