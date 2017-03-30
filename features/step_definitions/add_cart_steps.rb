When(/^I click "([^"]*)" on "([^"]*)"$/) do |button, dish|
  dish = Dish.find_by(name: dish)
  within ".dish-#{dish.id}" do
    click_link_or_button button
  end
end
