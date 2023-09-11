require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'AliShah', email: 'ali1243@gmail.com') }
  user = User.new(name: 'ismail', email: 'ismai4l12@gamil.com', password: '123456')
  user.save

  it 'name should not be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'subject two ' do
    user1 = User.create(name: 'ali12', email: 'johnnew@example.com', password: 'password')   
    expect(user1).to be_valid
  end

  it 'name shoud be AliShah' do
    expect(subject.name).to eq('AliShah')
  end

  it 'email should be ali1243@gmail.com' do
    expect(subject.email).to eq('ali1243@gmail.com')
  end
end
