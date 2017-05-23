Feature: Login and logout
  As a visitor
  In order to purchase items
  I would like to be able to login and out to the system

  Background:
    Given I visit the landing page
    And I click on link "Sign Up"
    And I fill in field "Username" with "JoeBloggs"
    And I fill in field "First Name" with "Joe"
    And I fill in field "Last Name" with "Bloggs"
    And I fill in field "E-mail" with "joe@bloggs.com"
    And I fill in field "Address" with "Joe's House"
    And I fill in field "Phone Number" with "012345678"
    And I fill in field "Password" with "password"
    And I fill in field "Password Confirmation" with "password"
    And I click on button "Submit"

  Scenario: Sign out
    Given I visit the landing page
    And I click on link "Log Out"
    Then I should see "Log In"

  Scenario: Fill in all fields
    Given I visit the landing page
    And I click on link "Log Out"
    And I click on link "Log In"
    Then I should see "Log in to your account"
    Given I fill in field "E-mail" with "joe@bloggs.com"
    And I fill in field "Password" with "password"
    And I click on button "Log in"
    Then I should see "Signed in successfully."

  Scenario: Sad path - leaving out the address, phone and first and last name
    Given I visit the landing page
    And I click on link "Log Out"
    And I click on link "Log In"
    Given I fill in field "E-mail" with "not_valid@bloggs.com"
    And I fill in field "Password" with "invalid_password"
    And I click on button "Log in"
    Then I should see "Invalid Email or password."
