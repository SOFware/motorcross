Feature: rider adds bikes and other equipment
  In order to keep track of the most effective settings for my races
  As a rider
  I want to add my bikes and other equipment to my inventory
  
  Scenario: add a bike
    Given I am a rider
    When I add a bike named "KTM 350"
    Then my bike list should show "KTM 350"
  
  
  
  
  
  
  