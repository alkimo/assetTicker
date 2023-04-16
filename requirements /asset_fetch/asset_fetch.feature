Feature: DataFetch
  As a user
  I want to be able to fetch asset data by the ticker
  So I can follow its financial changes over a specific time period.

  Scenario: Succesful Financial Asset Data Fetch By Ticker
    Given I am in the initial screen
    When I enter a valid ticker and tap the search button
    Then I should be taken to the asset page
    And I should be able to access the asset financial variation data With a Graphic and a Table

  Scenario: Unsuccessful Financial Asset Data Fetch By Invalid Ticker
    Given I am in the initial screen
    When I enter an invalid ticker and tap the search button
    Then I should receive an error message