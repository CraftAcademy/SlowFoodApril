Feature: As a restaurant owner
  In order to administer my restaurant (menu, dishes etc.)
  I need a login that gives me restaurant owner rights

  Background:
    Given the following restaurant owner credentials exist
      | email               | password       | password_confirmation | restaurant_owner        |
      | max@mollerstrom     | 12345678       | 12345678              | true                    |
      | joe@doe.com         | 12345678       | 12345678              | false                   |

  Scenario: Restaurant Owner Login
    Given I visit the landing page
    And  I click on link "Log In"
    And I fill in field "E-mail" with "max@mollerstrom"
    And I fill in field "Password" with "12345678"
    And I click on button "Log in"
    Then I should see link "View My Restaurant Dashboard"


  Scenario: Sad Path
    Given I visit the landing page
    And  I click on link "Log In"
    And I fill in field "E-mail" with "joe@doe.com"
    And I fill in field "Password" with "12345678"
    And I click on button "Log in"
    Then I should not see "View My Restaurant Dashboard"
