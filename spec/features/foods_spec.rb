require 'rails_helper'

RSpec.feature 'Foods', type: :feature do
  user = User.new(name: 'ismasfsdfil', email: 'ismai4lfsdfsdf12@gamil.com', password: '123456')
    user.save

  it 'User navigates to the new food item form' do
    sign_in user

    visit foods_path
    expect(page).to have_content('Foods')
    expect(page).to have_content('Create a New Food')
  end

  it "go to singin page" do
    visit new_user_session_path
    expect(page).to have_content("Log in")
  end
  
  it "logs in with valid credentials" do
    visit new_user_session_path
  
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Log in"  
  end

end