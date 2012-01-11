Feature: Record day and settings
  In order to improve my racing
  As a rider
  I want to be able to record the conditions on each race day and the settings I used
  
  Scenario: Rider creates a new race day
    Given I am a rider
    When I create a race with track: "Acme Speedway" date: "10/07/2011" type: "Motorcross" 
    Then my "races" list should show "Acme Speedway 10/07/2011"
  
  
  
