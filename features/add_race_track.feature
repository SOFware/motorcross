Feature: Add race track
  In order to improve my knowledge of each race track 
  As a rider
  I want to be able to record the race tracks that I compete on
  
  
  Scenario: Add a race track
    Given I am a rider
    When I add a track called "Acme Motorcross" of type "motorcross"
    Then my "track" list should show "Acme Motorcross"
  
  
  

  
