Feature: Create menu show page
  As a visitor
  In order to select dishes from a menu
  I would like to be able to visit a menu page and see the dishes available to me

  Background:
  Given the following restaurant exists
    | name        | street     | zip_code | city  | food_style |
    | NisseKebbab | kungsg 5   | 13456    | sthlm | kina       |
  Given the following menu exists
    | name           | restaurant  |
    | Nisses kebaber | NisseKebbab |

  Scenario: I create an menu page with menus
    Given I am on the restaurant menu page
    Then I should see "Menu"
    And I should see "NisseKebbab"
    And I should see "Nisses kebaber"
