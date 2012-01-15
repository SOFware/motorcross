Feature: Rider records session
  In order to succeed in my races
  As a rider
  I want to be able to record my bike's settings during each session, and it's performance
  
  

@wip
  Scenario: rider records a session
    Given I am a rider
    When I record on session on "January 15, 2012"
    Then my "session" list should show "2012-01-15"
  
  
  
