Feature: Rider records session
  In order to succeed in my races
  As a rider
  I want to be able to record my bike's settings during each session, and it's performance
  
  @wip
  Scenario: rider records a session
    When I record a session
    Then I should be shown the timer page
    And it should have a "start" button
  
  @wip
  Scenario: user records lap times
    Given I am on the timer page
    When I create a session
    Then I should see a start stopwatch button
  
  
  
  
  
  
