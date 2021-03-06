Given(/^the following dishes exist$/) do |table|
  table.hashes.each do |hash|
    menu = Menu.find_by(name: hash[:menu])
    create(:dish, name: hash[:name], price: hash[:price], menu: menu)
  end
end

Given(/^I am on the restaurant "([^"]*)" new dish page$/) do |restaurant_name|
  restaurant = Restaurant.find_by(name: restaurant_name)
  menu = restaurant.menu
  visit new_restaurant_menu_dish_path(restaurant, menu)
end

Then(/^the "([^"]*)" dish is saved on the database$/) do |dish_name|
  dish = Dish.find_by(name: dish_name)
  expect(dish).not_to be_nil
end

Then(/^the "([^"]*)" dish should not be on the system$/) do |dish_name|
  dish = Dish.find_by(name: dish_name)
  expect(dish).to be_nil
end
