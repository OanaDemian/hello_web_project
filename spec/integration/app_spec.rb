require "spec_helper"
require_relative "../../app"
require "rack/test"
describe Application do
  include Rack::Test::Methods

  let(:app) { Application.new }

  context "GET /" do
    it 'returns 200 OK' do
      # Assuming the post with id 1 exists.
      response = get('/names')

      expect(response.status).to eq(200)
      expect(response.body).to eq("Julia, Mary, Karim")
    end

    it 'returns 404 Not Found' do
      response = get('/name')

      expect(response.status).to eq(404)
      # expect(response.body).to eq(expected_response)
    end
  end

  context "POST /names" do
    it 'returns 200 OK when names are sorted' do
      response = post("/names", names: 'Joe,Alice,Zoe,Julia,Kieran')
      expect(response.status).to eq (200)
      expect(response.body).to eq ('Alice,Joe,Julia,Kieran,Zoe')
    end
  end
end