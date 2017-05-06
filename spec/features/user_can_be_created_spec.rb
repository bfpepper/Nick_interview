require "rails_helper"

describe "When I visit new user path" do
  scenario "I see fields to enter name, email and social" do

      visit new_user_path

      expect(page).to have_content("First Name:")
      expect(page).to have_content("Last Name:")
      expect(page).to have_content("Email:")
      expect(page).to have_content("Social Security Number:")

  end
end
