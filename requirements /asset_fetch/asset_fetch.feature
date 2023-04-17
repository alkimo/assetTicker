Feature: DataFetch
  As a user
  I want to to fetch financial asset data by its ticker
  So I can view the asset variation from the last 30 days displayed on a graphic and on a table.

  Scenario: Successful Financial Asset Data Fetch By Ticker
    Given I am in the initial search screen
    When I enter a ticker string and tap the search button
    But The systems validates if the ticker represents a valid financial asset
    Then It should make an API request to fetch the asset data
    And Display it for the user using a graphic and a table

  Scenario: Unsuccessful Financial Asset Data Fetch By Invalid Ticker
    Given I am in the initial search screen
    When I enter an invalid ticker and tap the search button
    Then I should receive an error message