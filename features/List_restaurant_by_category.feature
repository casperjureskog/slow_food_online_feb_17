Feature: index page with a list restaurants
As a visitor
In order to select a restaurant according to my taste
I should be able to select and see restaurant's by category

  Background:
    Given the following restaurants exists
    | name        | food_style |
    | Nisse pizza | Pizza      |
    | Nisse kebab | kebab      |
    | Olof pizza  | Pizza      |

  Scenario: select restaurant by category
    Given I am on the index page
    Then show me the page
    And I should see drop down menu "List Of Restaurants"
    And I select "Pizza" from "List Of Restaurants"
    And I should see "Pizza category"
