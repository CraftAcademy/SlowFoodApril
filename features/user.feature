Feature: Create a signup page
  As a visitor
  In order to place an order
  I would like to create an account

  Background:
    Given I visit the landing page
    And I click on link "Sign Up"
    Then I should see "Sign Up Form"


  Scenario: Fill in all fields
    Given I fill in field "Username" with "JoeBloggs"
    And I fill in field "First Name" with "Joe"
    And I fill in field "Last Name" with "Bloggs"
    And I fill in field "E-mail" with "joe@bloggs.com"
    And I fill in field "Address" with "Joe's House"
    And I fill in field "Phone Number" with "012345678"
    And I fill in field "Password" with "password"
    And I fill in field "Password Confirmation" with "password"
    And I click on button "Submit"
    Then I should see "Welcome! You have signed up successfully."

  Scenario: Sad path - leaving out the address, phone and first and last name
    Given I fill in field "Username" with "JoeBloggs"
    And I fill in field "E-mail" with "joe@bloggs.com"
    And I fill in field "Password" with "password"
    And I fill in field "Password Confirmation" with "password"
    And I click on button "Submit"
    Then I should see "4 errors prohibited this user from being saved"
