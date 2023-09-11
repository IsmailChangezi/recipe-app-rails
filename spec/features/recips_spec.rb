require 'rails_helper'

RSpec.feature 'Recip', type: :feature do
  user = User.new(name: 'Safdari', email: 'safdari4lfsdfsdf12@gamil.com', password: '123456')
    user.save

  it 'User navigates to the new food item form' do
    sign_in user

    visit recipes_path
    expect(page).to have_content('Recipes')
    expect(page).to have_content('Recipes')
    expect(page).to have_content('New recipe')
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