require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    before(:each) do
      # let!(:user) {User.create(name: 'htet', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'software developer')}
      get '/users/1/posts'
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'return the correct status' do
      expect(response.status).to eq(200)
    end

    it 'should render the correct template' do
      expect(response).to render_template('index')
    end

    it 'should return the correct placeholder' do
      expect(response.body).to include('Here is a list of posts for a given user')
    end
  end

  describe 'GET /show' do
    before(:each) do
      get '/users/1/posts/1'
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

    it 'should return the correct placeholder' do
      expect(response.body).to include('Here is a list of posts give by a user and post id')
    end
  end
end
