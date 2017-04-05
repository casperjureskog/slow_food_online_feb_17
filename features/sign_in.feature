Feature: Visitor sign in
  As a visitor
  In order to purchase items
  I would like to be able to login to the system

  Background:
    Given I am logged in as "grubbe@grubbe.com"


  Scenario: I sign in and out of an account
    And I am on the sign in page
    And I click "Sign Out"
    Then I should see "Signed out successfully."
    And I am on the sign in page
    Then I should see "Sign in"
    And I fill in "Email" with "grubbe@grubbe.com"
    And I fill in "Password" with "12345678"
    And I click "Sign in"
    Then I should see "Signed in successfully."
