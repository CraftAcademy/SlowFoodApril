Feature: As a restaurant owner
  In order to administer my restaurant (menu, dishes etc.)
  I need a login that gives me restaurant owner rights

  Background:
    Given the following restaurant owner credentials exist
      | email               | password       | password_confirmation | restaurant_owner        |
      | o.dania@aol.com     | 12345678       | 12345678              | true                    |

  Scenario: Restaurant Owner Login
    Given I visit the landing page
    And  I click on link "Restaurant Admin Login"
    Then I should see "Restaurant Admin Login form"
    And I fill in field "Email" with "o.dania@aol.com"
    And I fill in field "Password" with "12345678"
    And I click on button "Login"
    Then I visit the restaurant admin page
    Then I should see "Restaurant Admin successfully logged in"
