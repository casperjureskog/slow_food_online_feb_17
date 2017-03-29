Given(/^I am on the restaurant registration page$/) do
  visit new_restaurant_path
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, content|
  fill_in field, with: content
end

When(/^I click "([^"]*)"$/) do |button|
  click_link_or_button button
end

Given(/^I am on the restaurant menu page$/) do
  restaurant = Restaurant.find_by(name: 'NisseKebbab').id
  visit '/restaurants/'+restaurant.to_s+'/menu/:id'
end

Given(/^the following restaurant exists$/) do |table|
  table.hashes.each do |hash|
   Restaurant.create!(hash)
  end
end
