Feature: Visit the restaurant page
  As a visitor
  In order to select dishes from a menu
  I would like to be able to visit a menu page and see the restaurants menu name

  Background:
    Given the following restaurant categories exist
      | name      |
      | Sushi     |
      | Fast food |

    Given the following restaurants exist
      | name                | address           | email               | phone         | rest_category | description             |
      | Goteborg Wok Sushi  | Östrahamngatan 5  | goteborgwok@live.se | 031-13 51 52  | Sushi         | Greatest sushi in town! |
      | McDonalds           | Big Mac Drive     |                     |               | Fast food     |                         |

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
