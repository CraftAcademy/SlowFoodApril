Feature: Visit the restaurant page
  As a visitor
  In order to see a restaurants menu and dishes
  I would like to visit the restaurants page

  Background:
    Given "benji@teabags.com" exists and has 2 restaurants belonging to 2 restaurant categories

  Scenario: Go to the restaurant's page
    Given I visit the landing page
    And I click on link "Goteborg Wok Sushi"
    Then I should see "Goteborg Wok Sushi"
    And I should see "Address: Östrahamngatan 5"
    And I should see "Email: goteborgwok@live.se"
    And I should see "Phone: 031-13 51 52"
    And I should see "Greatest sushi in town!"
    And I should see link "Full menu"
