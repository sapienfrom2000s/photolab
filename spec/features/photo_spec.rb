require 'rails_helper'

RSpec.describe 'Admin', type: :feature do
  include Devise::Test::IntegrationHelpers
  include TrixHelper
  setup do
    Capybara.current_driver = :selenium_chrome
  end

  let(:admin) { create(:admin) }
  let(:photo) { create(:photo) }

  before :each do
    sign_in admin
  end

  it 'creates photo content', js: true do
    visit new_photo_path 

    fill_in 'Title', with: 'something'
    fill_in_trix_editor('photo_content', with: 'somecontent')
    click_button 'Create Photo'

    expect(page).to have_content('somecontent')
    expect(page).to have_content('Photo Content successfully created')
  end

  it 'updates photo content', js: true do 
    visit edit_photo_path(photo)    

    fill_in 'Title', with: 'somethingelse'
    fill_in_trix_editor('photo_content', with: 'someupdatedcontent')
    click_button 'Update Photo'

    expect(page).to have_content('someupdatedcontent')
    expect(page).to have_content('Photo Content successfully updated')
  end

  it 'destroys photo content', js: true do 
    visit photo_path(photo)    

    click_button 'Destroy Photo'

    expect(page).to have_content('Photo content was successfully destroyed.')
  end
end
