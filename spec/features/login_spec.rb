require 'rails_helper'

RSpec.describe "Login", type: :feature do

    let(:admin) { create(:admin) }

 it 'allows admin to sign in with valid credentials' do
   visit new_admin_session_path

   fill_in 'Email', :with=> admin.email
   fill_in 'Password', :with=> admin.password

   click_button 'Log in'

   expect(page).to have_content('Admin signed in successfully')
   expect(page).to have_link('Log Out')
 end
end
