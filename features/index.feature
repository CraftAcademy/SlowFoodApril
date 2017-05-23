Feature: As a system owner
  In order to display real data to my visitors and for users to start ordering via phone or email
  I would like to have real restaurant info in the system

Background:
  Given the following restaurants exist
    | name                | address           | email               | phone         |
    | Goteborg Wok Sushi  | Östrahamngatan 5  | goteborgwok@live.se | 031-13 51 52  |

Scenario:
  Given I visit the landing page
  Then I should see Restaurant "Goteborg Wok Sushi"
  And I should see "Address: Östrahamngatan 5"
  And I should see "Email: goteborgwok@live.se"
  And I should see "Phone: 031-13 51 52"
