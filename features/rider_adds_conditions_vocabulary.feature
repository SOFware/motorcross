Feature: Rider adds conditions vocabulary
  In order to be able to compare different runs
  As a rider
  I want to have a standard vocabulary to consistently describe conditions
  
  Scenario: add soil types
    Given I am a rider
    When I add a soil type "sand"
    Then my "soil type" list should show "sand"
  
  Scenario: add track types
    Given I am a rider
    When I add a track type "motocross"
    Then my "track type" list should show "motocross"
    
  Scenario: add racing series
    Given I am a rider
    When I add a racing series "GNCC"
    Then my "racing series" list should show "GNCC"
    
  Scenario: add ground conditions
    Given I am a rider
    When I add a soil condition like "mud"
    Then my "ground condition" list should show "mud"
  
  Scenario: add sky conditions
    Given I am a rider
    When I add a sky condition like "sunny"
    Then my "sky condition" list should show "sunny"
  
  
  
  
  
  
  
  
  
  
  
  
  
  

  
