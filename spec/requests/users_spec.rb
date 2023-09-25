require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    before(:each) do
      get '/users'
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'should return the correct status' do
      expect(response.status).to eq(200)
    end
    it 'should render the correct template' do
      expect(response).to render_template('index')
    end
    it 'include the correct placeholder' do
      expect(response.body).to include('Here is a list of users')
    end
  end

  describe 'GET /show' do
    before(:each) do
      get '/users/1'
    end
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'should return the correct status' do
      expect(response.status).to eq(200)
    end
    it 'should render the correct template' do
      expect(response).to render_template('show')
    end
    it 'include the correct placeholder' do
      expect(response.body).to include('Here is a user according to id')
    end
  end
end
