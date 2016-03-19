require 'rails_helper'

feature 'user creates an account' do 
  scenario "when the email is valid" do 
    visit '/'
    click_on "signup"
    fill_in "user_email", with: "joey@byrne.com"
    fill_in "user_password", with: "12345678"
    fill_in "user_password_confirmation", with: "12345678"

    click_button 'Sign up'

    expect(page).to have_content("Welcome!")
  end
end