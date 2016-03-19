require 'rails_helper'

feature 'user creates a new list' do 
  scenario "When they are signed in" do 
    visit '/lists/new'
    fill_in "Title", with: "Best hockey teams"
    click_on "Create List"

    expect(page).to have_content("List was successfully created.")
  end
end