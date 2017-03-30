Feature: Create menu show page
  As a visitor
  In order to select dishes from a menu
  I would like to be able to visit a menu page and see the restaurants menu name

  Scenario: I create an menu page and the menu´s name i displayed
    Given I am on the restaurant menu page
    And I should see "Menu"
    And I should see "Nisses"
    Then I should see "Pizzor"
