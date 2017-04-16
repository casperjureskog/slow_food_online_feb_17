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

    Scenario: I buy dishes and go to checkout with out having sign in
      Given I am on the restaurant menu page for "Nisses Takeaway"
      And I click "Buy" on "Kebabrulle"
      And I click "Checkout"
      And I should see "Total: 180"
      Then I should see "Please sign in before checkout"
      And I should not see button "Finalize order"
      Given I am logged in as "nubbe@nubbe.com"
      And I click "Finalize order"
      And I should see "Thank you for your order"
