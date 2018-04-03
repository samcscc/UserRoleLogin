Feature: Dealer Management
  Scenario: Dealer Search
    Given  I am dealer management page
    When I search for a valid dealer Germain
    Then I should see the Germain Toyota dealer in the search result
