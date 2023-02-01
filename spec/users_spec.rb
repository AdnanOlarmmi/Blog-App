require 'rails_helper'
require 'selenium-webdriver'

RSpec.describe 'Users', type: :feature do
    scenario 'Index Page' do
        visit users_path
        sleep(100)
        expect(page).to have_content('Here is the list of some users')
        # expect(page).to have_content('Posts: 0')
        # expect(User.count).to eq(8)
        # #I can see the profile picture for each user.
        # expect(page).to have_css("img[src*='https://randomuser.me/api/portraits']")
        # #I can see the number of posts each user has written.
        # #When I click on a user, I am redirected to that user's show page.
    end
end