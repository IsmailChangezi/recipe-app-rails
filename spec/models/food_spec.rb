require 'rails_helper'

RSpec.describe Food, type: :model do

  user1 = User.create(name: 'John Doe', email: 'john@example.com', password: 'password')   
  subject { Food.create(name: 'Apple', measurement_unit: 'kg', price: 12, quantity: 1.0, user_id: user1.id) }

  it 'Food object must be valid' do
    user12 = User.create(name: 'ali', email: 'alidfn@example.com', password: 'password')   
    expect(user12).to be_valid
  end

  it 'Food has teh name' do
    expect(subject.name).to eq('Apple')
  end

  it 'Food has the measurment unit and  price' do
    expect(subject.measurement_unit).to eq('kg')
    expect(subject.price).to eq(12)
  end
end
