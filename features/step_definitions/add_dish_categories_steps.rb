Given(/^I am on the dishes show page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see "([^"]*)" in "([^"]*)"$/) do |dish, category|
  expect(page).to have_content dish
  scope{ find('h3').should have_content(category) }
end

Given(/^the following dishes and category exist$/) do |table|
  table.hashes.each do |hash|
    menu = Menu.find_by(name: hash[:menu])
    create(:dish, name: hash[:name], price: hash[:price], category: hash[:category], menu: menu)
  end
end
