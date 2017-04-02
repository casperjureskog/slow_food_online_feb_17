Given(/^I should see drop down menu "([^"]*)"$/) do |content|
  expect(page).not_to have_content content
end

Given(/^I select "([^"]*)" from "([^"]*)"$/) do |option, category|
  select option, from: category
end
