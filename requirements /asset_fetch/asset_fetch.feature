Feature: DataFetch
  As a user
  I want to to fetch financial asset data by its ticker
  So I can view the asset variation from the last 30 days displayed on a graphic and on a table.

  Scenario: Successful Financial Asset Data Fetch By Ticker
    Given I am in the initial search screen
    When I enter a valid ticker string and tap the search button
    Then I should be taken to the asset page
    And I should be shown the asset value variation in a Graphic and a Table

  Scenario: Unsuccessful Financial Asset Data Fetch By Invalid Ticker
    Given I am in the initial screen
    When I enter an invalid ticker and tap the search button
    Then I should receive an error message