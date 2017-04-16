Feature: Check if users have sign in before checkout.
  As a restaurant owner
  In order to know how check's out
  I would like the user to sign in before pruschase

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
    | Falafel    | 190   | Nisses Takeaway |
   Given the following user exist
    | name  | email           | password  | password_confirmation |
    | Nubbe | nubbe@nubbe.com | 12345678  | 12345678              |

    Scenario: I buy dishes and go to checkout with out having sign in
      Given I am on the restaurant menu page for "Nisses Takeaway"
      And I click "Buy" on "Kebabrulle"
      And I click "Checkout"
      And I should see "Total: 180"
      Then show me the page
      Then I should see "Please sign in before checkout"
      And I should not see "Finalize order"
      Given I am logged in as "nubbe@nubbe.com"
      And I click "Finalize order"
      And I should see "Thank you for your order"
