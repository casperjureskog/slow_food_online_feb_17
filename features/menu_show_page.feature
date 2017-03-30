Feature: Create menu show page
  As a visitor
  In order to select dishes from a menu
  I would like to be able to visit a menu page and see the restaurants menu name

  Background:
  Given the following restaurant exists

  Scenario: I create an menu page and the menu´s name i displayed
    Given the following menu exists
    And I am on the restaurant menu page
    Then I should see "Menu"
    And I should see "Nisses"
    And I should see "Pizzor"
