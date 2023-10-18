require 'rails_helper'

RSpec.describe 'Admin', type: :feature do
  include Devise::Test::IntegrationHelpers
  include TrixHelper
  setup do
    Capybara.current_driver = :selenium_chrome
  end

  let(:admin) { create(:admin) }
  let(:card) { create(:card) }

  before :each do
    sign_in admin
  end

  it 'creates card content', js: true do
    visit new_card_path 

    fill_in 'Title', with: 'something'
    fill_in_trix_editor('card_content', with: 'somecontent')
    click_button 'Create Card'

    expect(page).to have_content('somecontent')
    expect(page).to have_content('Card Content successfully created')
  end

  it 'updates card content', js: true do 
    visit edit_card_path(card)    

    fill_in 'Title', with: 'somethingelse'
    fill_in_trix_editor('card_content', with: 'someupdatedcontent')
    click_button 'Update Card'

    expect(page).to have_content('someupdatedcontent')
    expect(page).to have_content('Card Content successfully updated')
  end

  it 'destroys card content', js: true do 
    visit card_path(card)    

    click_button 'Destroy Card'

    expect(page).to have_content('Card content was successfully destroyed.')
  end
end
