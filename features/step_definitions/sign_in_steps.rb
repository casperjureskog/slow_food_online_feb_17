Given(/^I am on the sign in page$/) do
  visit new_user_session_path
end

Given(/^the following user exist$/) do |table|
  table.hashes.each do |hash|
    create(:user, name: hash[:name], email: hash[:email], password: hash[:password])
  end
end
