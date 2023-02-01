require 'rails_helper'

# I can see the username of all other users.
# I can see the profile picture for each user.
# I can see the number of posts each user has written.
# When I click on a user, I am redirected to that user's show page.

RSpec.describe 'Users Index Page', type: :system do
  describe 'index page' do
    before(:each) do
      @user = User.create(name: 'Adnan', photo: 'https://i.imgur.com/9yG7zZT.jpg')
      @user2 = User.create(name: 'Olamilekan', photo: 'https://i.imgur.com/9yG7zZT.jpg')
      visit users_path
    end

    it 'shows the right content' do
      expect(page).to have_content('Here is the list of Users')
    end

    it 'shows username of all other users' do
      expect(page).to have_content('Adnan')
      expect(page).to have_content('Olamilekan')
    end

    it 'should show the profile picture for each user' do
      expect(page).to have_css("img[src*='https://i.imgur.com/9yG7zZT.jpg']")
      expect(page).to have_css("img[src*='https://i.imgur.com/9yG7zZT.jpg']")
    end

    it 'should show the number of posts each user has written' do
      expect(page).to have_content('Posts: 0')
      expect(page).to have_content('Posts: 0')
    end

    it 'should redirect to user show page when clicked' do
      click_link('Adnan')
      expect(page).to have_content('Adnan')
    end
  end
end
