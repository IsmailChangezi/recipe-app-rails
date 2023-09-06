require 'rails_helper'

RSpec.describe Food, type: :model do
  user1 = User.new(name: 'ismail', email: "ismai4l12@gamil.com", password: "123456") 
  food = Food.new(name: 'potato', measurement_unit:'1gr', price: 12, users: user1)

    it 'Food object must be valid' do
        expect(food).to be_valid
    end

    it 'Food has teh name' do
        expect(food.name).to eq("potato")
    end

    it "Food has the measurment unit and  price" do
        expect(food.measurement_unit).to eq("1gr")
        expect(food.price).to eq(12)
    end
end