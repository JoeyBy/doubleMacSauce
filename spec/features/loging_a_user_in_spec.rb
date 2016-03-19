require 'rails_helper'

feature 'user logs in' do 
  scenario "when the email and password are valid" do 
    visit '/users/sign_in'
    fill_in "user_email", with: "joey@byrne.com"
    fill_in "user_password", with: "12345678"
    fill_in "user_password_confirmation", with: "12345678"

    click_button 'Login in'

    expect(page).to have_content("Welcome!")
  end
end