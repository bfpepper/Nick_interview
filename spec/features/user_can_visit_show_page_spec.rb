require 'rails_helper'

describe 'As a user' do
  context 'When I visit a user show page' do
    scenario 'I see the given users info' do

      user1 = create(:user)
      user2 = create(:user)

      visit user_path(user1)

      expect(page).to have_content(user1.first_name)
      expect(page).to have_content(user1.last_name)
      expect(page).to have_content(user1.email)
      expect(page).to have_content(user1.social_security_number)

      expect(page).to_not have_content(user2.first_name)

    end
  end
end
