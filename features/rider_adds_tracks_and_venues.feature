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
    When I add a track called "Pro Motorcross" at the "NCMP" venue
    Then my "track" list should show "NCMP"
    And my "track" list should show "Pro Motorcross"
  
  Scenario: Add an event
    Given I am a rider
    When I add an event called "National Championships"
    Then my "event" list should show "National Championships"
    
  Scenario: Add a session type
    Given I am a rider
    When I add a session type called "Practice"
    Then my "session type" list should show "Practice"
  
  
  
  
  
  
  