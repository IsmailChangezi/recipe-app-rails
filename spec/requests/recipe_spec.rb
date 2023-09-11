require 'rails_helper'

RSpec.describe 'Recipes', type: :request do

  let(:user) { User.create(name: 'Test User', email: 'ali@example.com', password: '123456') }
  let(:recipe) { Recipe.create(name: 'Test Recipe', user:) }

  before { sign_in user }

  context 'GET /index' do
    it 'returns http success' do
      get '/recipes'
      expect(response).to have_http_status(:success)
      expect(response.status).to eq(200)
    end

    it 'render the index template' do
      get '/recipes'
      expect(response).to render_template('recipes/index')
    end

    it 'returns http success' do
      get "/recipes/new"
      expect(response).to have_http_status(:success)
      expect(response.status).to eq(200)
    end
  end
end
