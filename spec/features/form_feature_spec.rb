require 'spec_helper'

describe 'form' do

it 'should have a form' do
  visit '/messages/new'
  expect(page).to have_css 'h1', text: 'Form'
end




it 'should send an sms to the user after sending the form' do
  visit '/messages/new'
  within '.new_message' do
			        fill_in 'Message', with: 'Hello Hello Hello'
			        fill_in 'Telephone', with: '+491722577800'
			        click_button "Submit form"
			      end
  expect(page).to have_content 'thanks for using our service'
end


end