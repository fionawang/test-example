Feature: Searching
  In order to find out about cucumber
  As a user
  I want to search for cucumber and see results


  Scenario: Searching for cucumber
    Given I am on yahoo.com
    When I fill in the search field with "cucumber"
	And I click the search button
    Then I should see search results
	And I should save a screenshot called "search_cucumber.png"
