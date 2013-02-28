Feature: Test
  In order to learn cucumber
  As a student
  I want a passing spec

  
  Scenario: Open Browser
    Given I have a url
    When I run the test
    Then it should open the browser
	And it should save a screenshot
  
  
  