require 'rails_helper'

RSpec.describe 'Recipes', type: :request do
  before(:each) do
    @user = User.new(name: 'ismail', email: 'ismai4l12@gamil.com', password: '123456')
    @recipe = Recipe.new(name: 'potato', preparation_time: '20 munites', cooking_time: '10 munites',
                         description: 'Potato is a popular mail in the world', users: @user)
  end
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
      get "/recipes/#{@recipe.id}/"
      expect(response).to have_http_status(:success)
      expect(response.status).to eq(200)
    end
  end
end
