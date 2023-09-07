require 'rails_helper'

RSpec.describe Recipe, type: :model do
  user1 = User.new(name: 'ismail', email: 'ismai4l12@gamil.com', password: '123456')
  recipe = Recipe.new(name: 'potato', preparation_time: '20 munites', cooking_time: '10 munites',
                      description: 'Potato is a popular mail in the world', users: user1)

  it 'recipe object must be valid' do
    expect(recipe).to be_valid
  end

  it 'recipe has teh name' do
    expect(recipe.name).to eq('potato')
  end

  it 'recipe has the measurment unit and  price' do
    expect(recipe.preparation_time).to eq('20 munites')
    expect(recipe.cooking_time).to eq('10 munites')
  end
end
