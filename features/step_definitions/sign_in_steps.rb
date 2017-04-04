Given(/^I sign up for an account$/) do
  visit new_user_registration_path
  fill_in 'Name', with: 'Nubbe'
  fill_in 'Email', with: 'nubbe@nubbe.com'
  fill_in 'Password', with: '12345678'
  fill_in 'Password confirmation', with: '12345678'
  click_link_or_button 'Sign up'
  click_link_or_button 'Sign Out'
end

Given(/^I am on the sign in page$/) do
  visit new_user_session_path
end
