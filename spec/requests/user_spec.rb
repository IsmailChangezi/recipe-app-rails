require 'rails_helper'

RSpec.describe 'UsersController', type: :request do
  describe 'GET /users' do
    user = User.new(name: 'ismail', email: 'ismai4l12@gamil.com', password: '123456')
    user.save

    it 'renders a successful response' do
      sign_in user
      get '/users'
      expect(response).to be_successful # 3
    end

    it 'renders the index action with index view' do
      sign_in user
      get '/users'
      expect(response).to have_http_status(:success)
      expect(response.status).to eq(200)
      expect(response.status).not_to eq(404)
    end
    it 'renders the one user' do
      sign_in user
      get "/users/#{user.id}"
      expect(response).to have_http_status(:success)
      expect(response.status).to eq(200)
    end
  end
end
