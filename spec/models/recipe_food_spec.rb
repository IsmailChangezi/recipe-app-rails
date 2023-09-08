require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  user1 = User.new(name: 'ismail', email: 'ismai4l12@gamil.com', password: '123456')
  food = Food.new(name: 'potato', measurement_unit: '1gr', price: 12, user: user1)
  recipe = Recipe.new(name: 'potato', preparation_time: '20 munites', cooking_time: '10 munites',
                      description: 'Potato is a popular mail in the world', users: user1)
  recipe_food = RecipeFood.new(quantity: 13, food: food, recipe: recipe)
  
  it 'Food object must be valid' do
    expect(recipe_food).to be_valid
  end

  it 'Food has teh name' do
    expect(recipe_food.quantity).to eq(13)
  end
end
