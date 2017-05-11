Feature: As a potential customer
  As soon as I hit the application
  I would like to see a map with my location.
  And I would like to see restaurants in my area

Scenario:
  Given I visit the landing page
  And google map is loaded on the landing page
  And I set my location to "-25.83635" latitude and "28.20687" longitude
  Then the marker on the map should be "-25.83635" latitude and "28.20687" longitude



  
