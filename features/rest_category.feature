Feature: As a visitor/user
  In order to select a restaurant according to my taste
  I should be able to select and see restaurant's by category

  Background:
    Given "benji@teabags.com" exists and has 2 restaurants belonging to 2 restaurant categories

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
