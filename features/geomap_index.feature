Feature: As a potential customer
  As soon as I hit the application
  I would like to see a map with my location.
  And I would like to see restaurants in my area

  @javascript
  Scenario:
    Given I visit the landing page
    Then I have google map loaded on the page
