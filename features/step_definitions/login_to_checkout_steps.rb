Then(/^I should not see button "([^"]*)"$/) do |text|
  response.should_not have_tag("input[type=submit][value=#{text}]")
end
