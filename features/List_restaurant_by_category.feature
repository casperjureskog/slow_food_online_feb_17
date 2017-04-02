Feature: index page with a list restaurants
As a visitor
In order to select a restaurant according to my taste
I should be able to select and see restaurant's by category

  Background:
    Given the following restaurants exist
    | name        |
    | NisseKebbab |

  Scenario: select restaurant by category
    Given I am on the index page
    And I should see drop down menu "List Of Restaurants"
    And I select "Pizza" from "List Of Restaurants"
    And I should see "Pizza category"
