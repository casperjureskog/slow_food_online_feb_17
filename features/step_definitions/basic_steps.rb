Given(/^I am on the restaurant registration page$/) do
  visit new_restaurant_path
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, content|
  fill_in field, with: content
end

When(/^I click "([^"]*)"$/) do |button|
  click_link_or_button button
end

Given(/^the following restaurants exist$/) do |rest_name|
  @restaurant = create(:restaurant, name: rest_name)
end

Given(/^the following menus exist$/) do |menu_name|
  create(:menu, name: menu_name, restaurant: @restaurant)
end

Given(/^I am on the restaurant menu page$/) do
  visit '/restaurants/'+@restaurant.id.to_s+'/menus/:id'
end
