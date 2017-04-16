Feature: Add user previous order page with rating
  As a user
  In order to see my previus orders.
  I would like to see a user page with my order details.

  Background:
   Given the following restaurants exist
    | name        |
    | NisseKebbab |
   And the following menus exist
    | name            | restaurant  |
    | Nisses Takeaway | NisseKebbab |
   And the following dishes exist
    | name       | price | menu            |
    | Kebabrulle | 180   | Nisses Takeaway |
    | Falafel    | 100   | Nisses Takeaway |
   Given the following user exist
    | name  | email           | password  | password_confirmation |
    | Nubbe | nubbe@nubbe.com | 12345678  | 12345678              |

  Scenario: User whants to see previeus orders and rate resturants
    Given I am logged in as "nubbe@nubbe.com"
    Given I am on the restaurant menu page for "Nisses Takeaway"
    And I click "Buy" on "Kebabrulle"
    And I click "Checkout"
    And I click "Finalize order"
    And I click "User page"
    Then I should see "Kebabrulle"
    And I select "5" from restaurant rating "NisseKebbab"
    And I click on "Rating" for "NisseKebbab"
    Then I should see "NisseKebbab"s "Rating 3.16"
