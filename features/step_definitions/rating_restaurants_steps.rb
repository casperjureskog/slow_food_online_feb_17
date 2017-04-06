Given(/^the following rating exist$/) do |table|
  table.hashes.each do |hash|
    restaurant = Restaurant.find_by(name: hash[:restaurant])
    create(:rating, rating: hash[:rating], counter: hash[:counter] , restaurant: restaurant)
  end
end
