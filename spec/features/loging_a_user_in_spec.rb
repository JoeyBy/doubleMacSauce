require 'rails_helper'

feature 'user logs in' do 
  scenario "when the email and password are valid" do 
    visit '/users/sign_in'
    user = User.create!(:email => "joey.byrne@outlook.com", :password => "12345678", :first_name => "Joey", :last_name => "Byrne")
    fill_in "user_email", with: "joey.byrne@outlook.com"
    fill_in "user_password", with: "12345678"

    click_button 'Log in'
    expect(page).to have_content("Signed in successfully")
  end
end