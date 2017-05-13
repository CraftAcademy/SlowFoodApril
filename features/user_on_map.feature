Feature: As a potential customer
  As soon as I hit the application
  I would like to see a map with my location.
  And I would like to see restaurants in my area


Background:
  Given the following restaurants exists
    | name            | address               | city        | state       | country        |
    | Spurs           | 25, Burger Avenue     | Centurion   | Gauteng     | South Africa   |
    | Ying Yang       | 35, Station road      | Centurion   | Gauteng     | South Africa   |
    | Steers          | 45, Crawford Avenue   | Centurion   | Gauteng     | South Africa   |
  Then location for "Spurs" should be "-25.838572" lat and "28.209190" long
  Then location for "Spurs" should be "-25.834003" lat and "28.213094" long
