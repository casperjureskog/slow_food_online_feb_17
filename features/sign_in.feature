Feature: Visitor sign in
  As a visitor
  In order to purchase items
  I would like to be able to login to the system

  Scenario: I sign in to an account
   Given I have an account
   And I am on the sign in page
   Then show me the page
   Then I should see "Sign in"
   When I fill in "Name" with "Nubbe"
   And I fill in "Email" with "nubbe@nubbe.com"
   And I fill in "Password" with "12345678"
   And I click "Sign in"
   Then I should see "You have signed in successfully."
