require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'AliShah', email: 'ali1243@gmail.com') }
  user = User.new(name: 'ismail', email: 'ismail1243@gamil.com', password: '123456')

  it 'name should not be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'subject two ' do
    expect(user).to be_valid
  end

  it 'name shoud be AliShah' do
    expect(subject.name).to eq('AliShah')
  end

  it 'email should be ali1243@gmail.com' do
    expect(subject.email).to eq('ali1243@gmail.com')
  end
end
