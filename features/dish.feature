Feature: Add dishes to menu
  As a visitor
  In order to decide from various dishes from a restaurant
  I would like to see many dishes in the restaurant´s menu

  Background:
    Given "max@beach_and_crusing.com" exists and has 2 restaurants belonging to 2 restaurant categories

    Given the following menus exist
      | name                    | restaurant          |
      | Sushi Menu              | Goteborg Wok Sushi  |
      | Burgers                 | McDonalds           |
      | Breakfast menu          | McDonalds           |
      | Sushi Menu              | McDonalds           |

    Given the following dishes exist
      | name                    | description                             | price      | menu                      | restaurant           |
      | 7 piece sushi           | Salmon and avocado sushi pieces         | 10         | Sushi Menu                | Goteborg Wok Sushi   |
      | Giant Burger            | A burger with cheese and lettuce        | 150        | Burgers                   | McDonalds      |
      | Quarter Pounder Cheese  | A burger with too much cheese           | 2000       | Burgers                   | McDonalds      |
      | Coffe                   | Not from Colombia                       | 2500       | Sushi Menu                | McDonalds      |

  Scenario: Go to the restaurant's page
    Given I visit the landing page
    And I click on link "McDonalds"
    And I click on link "Full menu"
    Then I should see "Giant Burger"
    And I should see "A burger with cheese and lettuce"
    And I should see "Quarter Pounder Cheese"
    And I should see "150"
    And I should see "2000"
    And I should not see "7 piece sushi"
