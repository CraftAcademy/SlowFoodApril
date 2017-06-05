Feature: Show order on checkout page
  As a user
  In order to see what I am ordering
  I would like to see a summary of my order on the checkout page

  Scenario: View order on checkout page

    Given "benji@teabags.com" exists and has 2 restaurants belonging to 2 restaurant categories

    And the following menus exist
      | name                    | restaurant          |
      | Sushi Menu              | Goteborg Wok Sushi  |
      | Burgers                 | McDonalds           |
      | Breakfast menu          | McDonalds           |
      | Sushi Menu              | McDonalds           |

    And the following dishes exist
      | name                    | description                             | price      | menu                      | restaurant           |
      | 7 piece sushi           | Salmon and avocado sushi pieces         | 10         | Sushi Menu                | Goteborg Wok Sushi   |
      | Giant Burger            | A burger with cheese and lettuce        | 150        | Burgers                   | McDonalds            |
      | Quarter Pounder Cheese  | A burger with too much cheese           | 2000       | Burgers                   | McDonalds            |
      | Coffe                   | Not from Colombia                       | 2500       | Sushi Menu                | McDonalds            |

    Given I visit the landing page
    And I click on link "Cart"
    Then I should see "Your cart is empty"
    Given I visit the landing page
    And I click on link "McDonalds"
    And I click on link "Full menu"
    And I click on link "Add Giant Burger to cart"
    And I click on link "Add Coffe to cart"

    Given I visit the landing page
    And I click on link "Cart"
    Then I should see "My Cart Items"
    And I should see "McDonalds"
    And I should see "Giant Burger"
    And I should see "150"
    And I should see "Coffe"
    And I should see "2500"
    And I should see "Total price:"
    And I should see "2650"
    And I should see "mickeyd@mcd.com"
    And I should see "770-555-1231"
    When I click on link "Empty cart"
    Then I should see "Your cart is empty"
