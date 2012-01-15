Feature: rider adds bikes and other equipment
  In order to keep track of the most effective settings for my races
  As a rider
  I want to add my bikes and other equipment to my inventory
  
  Scenario: add a type of bike
    Given I am a rider
    When I add a "bike" with make "KTM" and model "350"
    Then my "bike" list should show "KTM"
    And my "bike" list should show "350"
    
  Scenario: add a type of tire
    Given I am a rider
    When I add a "tire" with make "Dunlop" and model "MX 31"
    Then my "tire" list should show "Dunlop"
    And my "tire" list should show "MX 31"
  
  
  
  
  
  
  
  
  
  