Feature: As a Restaurant owner
  In order to market my food to the right demographic
  I would like the system to know about my location


  Scenario:
    Given my restaurant is created with the address, city, state and country
      | name               | address          | city        | province        | country |
      | Goteborg Wok Sushi | Östrahamngatan 5 | Gothenbourg | Västra Götaland | Sweden  |

    Then location for "Goteborg Wok Sushi" should be "57.7093164" lat and "11.9663941" long
