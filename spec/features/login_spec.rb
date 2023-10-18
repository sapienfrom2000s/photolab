require 'rails_helper'

RSpec.describe "Login", type: :feature do

 let(:admin) { create(:admin) }

 before :each do
   visit new_admin_session_path
 end

 it 'allows admin to sign in with valid credentials' do

   fill_in 'Email', :with=> admin.email
   fill_in 'Password', :with=> admin.password

   click_button 'Log in'

   expect(page).to have_content('Admin signed in successfully')
   expect(page).to have_link('Log Out')
 end

 it 'denies to sign in with invalid crendtials' do
   fill_in 'Email', :with=> 'email@invalid.com'
   fill_in 'Password', :with=> 'arandompassword'

   click_button 'Log in'

   expect(page).to have_content('Invalid Email or password')
 end
end
