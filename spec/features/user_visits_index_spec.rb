require 'rails_helper'

describe "As a user" do
  context "When I visit the user index page" do
    scenario "I see a list of all users in the system" do

      user1, user2 = create_list(:user, 2)

      visit users_path

      expect(page).to have_content(user1.first_name)
      expect(page).to have_content(user2.first_name)

    end
  end
end
