Feature: As a Restaurant owner
In order to market my food to the right demographic
I would like the system to know about my location

Scenario:
  Given my restaurant is created with the address, city, state and country
    | name                | address           | email               | phone         | city        | state           | country  |
    | Goteborg Wok Sushi  | Östrahamngatan 5  | goteborgwok@live.se | 031-13 51 52  | Gothenbourg | Västra Götaland | Sweden   |
  Then I expect my geo location to be "57.7093160" lat and "11.9663940" long
