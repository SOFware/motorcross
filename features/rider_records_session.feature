Feature: Rider records session
  In order to succeed in my races
  As a rider
  I want to be able to record my bike's settings during each session, and it's performance
  
  
  Scenario: rider records a session
    Given I am a rider
    When I record on session on "January 15, 2012"
    Then my "session" list should show "2012-01-15"
  
  @javascript
  Scenario: rider records all session data
    When I record all the information on the current session
    Then I should be shown the home page
  
  
  @wip
  Scenario: mechanic records lap times
    Given 
    When I create a session
    Then I should see a start stopwatch button
  
  
  
  
  
  
