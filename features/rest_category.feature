Feature: As a visitor/user
  In order to select a restaurant according to my taste
  I should be able to select and see restaurant's by category

  Background:
    Given the following restaurant categories exist
      | name      |
      | Sushi     |
      | Fast food |

    Given the following restaurants exist
      | name                | address           | email               | phone         | rest_category | description             |
      | Goteborg Wok Sushi  | Östrahamngatan 5  | goteborgwok@live.se | 031-13 51 52  | Sushi         | Greatest sushi in town! |
      | McDonalds           | Big Mac Drive     |                     |               | Fast food     |                         |

    Given I visit the landing page
    And I choose "Sushi" from drop-down "category_id"
    And I click on "Filter"

  Scenario: Viewing restaurants by category
    Then I should see link "Goteborg Wok Sushi"
    And I should not see "McDonalds"
    Given I choose "Fast food" from drop-down "category_id"
    And I click on "Filter"
    Then I should see link "McDonalds"
    And I should not see "Goteborg Wok Sushi"

  Scenario: Following link to Restaurant
    Then I should see link "Goteborg Wok Sushi"
    Given I click on link "Goteborg Wok Sushi"
    Then I should see "Greatest sushi in town!"
    And I should see link "Full menu"
