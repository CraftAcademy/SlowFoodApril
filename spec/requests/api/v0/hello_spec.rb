require 'rails_helper'

RSpec.describe Api::V0::HelloController, type: :request do
  describe 'GET /v0/hello' do
    it 'should return Hi' do
      get '/api/v0/hello'
    end
      json_response = JSON.parse(response.body)
      expect(response.status).to eq 200
      expect(json_response['message']).to eq 'Hi'
    end
  end
