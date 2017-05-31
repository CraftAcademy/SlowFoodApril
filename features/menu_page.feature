Feature: Visit the restaurant page
  As a visitor
  In order to select dishes from a menu
  I would like to be able to visit a menu page and see the restaurants menu name

  Background:
    Given "benji@teabags.com" exists and has 2 restaurants belonging to 2 restaurant categories

    Given the following menus exist
      | name                    | restaurant          |
      | Goteborg Wok Sushi Menu | Goteborg Wok Sushi  |
      | Happy Meals             | McDonalds           |
      | Breakfast menu          | Goteborg Wok Sushi  |

  Scenario: Go to the restaurant's page
    Given I visit the landing page
    And I click on link "Goteborg Wok Sushi"
    And I click on link "Full menu"
    Then I should see "Goteborg Wok Sushi Menu"
    And I should see "Breakfast menu"
    And I should not see "Happy Meals"
