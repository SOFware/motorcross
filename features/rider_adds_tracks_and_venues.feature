Feature: Add tracks and venues
  In order to improve my knowledge of each race track 
  As a rider
  I want to be able to record the race tracks and venues that I compete on
  
  
  Scenario: Add a racing venue
    Given I am a rider
    When I add a venue called "NCMP"
    Then my "venue" list should show "NCMP"
  
  
  
  
  Scenario: Add a race track
    Given I am a rider
    When I add a track called "Acme Motorcross" of type "motorcross"
    Then my "track" list should show "Acme Motorcross"
  
  
  

  
