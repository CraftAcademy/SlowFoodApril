Feature: As a restaurant owner
  In order to categorise the dishes
  I would like to be able to create my own menus

    Background:
      Given "o.dania@aol.com" exists and has 2 restaurants belonging to 2 restaurant categories
      And I am logged in as "o.dania@aol.com"

    Scenario: Add Menu on Restaurant Owner Page
      Given I click on link "View My Restaurant Page"
      And I visit "o.dania@aol.com" restaurants page
      And I click on link "McDonalds"
      And I click on link "Create Menu"
      And I fill in field "Menu Name" with "Orchid Bistro"
      And I click on button "Create"
      Then I should see "Menu added"
