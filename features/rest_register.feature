Feature: As a restaurant owner
  In order to display my restaurant in the system
  I would like to be able to create a restaurant account

  Background:
    Given the following restaurant categories exist
      | name      |
      | Sushi     |
      | Fast food |
      | Mexican   |

  Scenario:
    Given I am logged in with "o.dania@aol.com", password '12345678' and password_confirmation '12345678'
    And I click on the "Are you a restaurant owner? Click to register your restaurant" link
    Then I should see "Restaurant Registration Form"
    And I fill in field "Restaurant Name" with "Bungalows"
    And I fill in field "Address" with "34, Crawford Avenue"
    And I fill in field "City" with "Centurion"
    And I fill in field "Province" with "Gauteng"
    And I fill in field "Country" with "South Africa"
    And I choose "Fast food" from drop-down "Restaurant Category"
    And I click on button "Submit"
    Then I should see "Your restaurant has been sucessfully registered"
