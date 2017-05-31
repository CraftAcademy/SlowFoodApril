Feature: Edit restaurant menu
  As a restaurant owner
  In order to categorise the dishes
  I would like to be able to edit and delete my own menus

  Background:
    Given "max@beach_and_crusing.com" exists and has 2 restaurants belonging to 2 restaurant categories
    And I am logged in as "max@beach_and_crusing.com"

  Given the following menus exist
    | name                    | restaurant          |
    | Sushi Menu              | Goteborg Wok Sushi  |
    | Burgers                 | McDonalds           |
    | Breakfast menu          | McDonalds           |
    | Sushi Menu              | McDonalds           |

  Scenario: Edit menu as restaurant owner
    Given I click on link "View My Restaurant Page"
    And I visit "max@beach_and_crusing.com" restaurants page
    And I click on link "McDonalds"
    And I click on link "Edit Burgers Menu"
    And I fill in field "Menu Name" with "Vegan"
    And I click on button "Save"
    Then I should see "Menu updated"
    And I should see "Vegan"