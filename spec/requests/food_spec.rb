require 'rails_helper'

RSpec.describe 'Foods', type: :request do
  before(:each) do
    @user = User.new(name: 'ismail', email: 'ismai4l12@gamil.com', password: '123456')
    @food = Food.new(name: 'potato', measurement_unit: '1gr', price: 12, users: @user)
  end
  context 'GET /index' do
    it 'returns http success' do
      get '/foods'
      expect(response).to have_http_status(:success)
      expect(response.status).to eq(200)
    end

    it 'render the index template' do
      get '/foods'
      expect(response).to render_template('foods/index')
    end

    it 'returns http success' do
      get "/foods/#{@food.id}/"
      expect(response).to have_http_status(:success)
      expect(response.status).to eq(200)
    end
  end
end
