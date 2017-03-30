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
  @restaurant = create(:restaurant)
  create(:menu , restaurant: @restaurant)
  visit '/restaurants/'+@restaurant.id.to_s+'/menus/:id'
end
