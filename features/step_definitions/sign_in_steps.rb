Given(/^I am on the sign in page$/) do
  visit new_user_session_path
end

Given(/^I am logged in as "([^"]*)"$/) do |email|
  current_user  = create(:user, email: email)
  login_as(current_user, :scope => :user)
end
