Feature: Dealer Management

  Scenario: Dealer Search
    Given I am on dealer management page
    When I search for a valid dealer "Germain"
    Then I should see the dealer details

  Scenario: New Dealer
    Given I am on dealer managment page
    When I search create a new Dealer
    Then the new Dealer  is added to the list

  Scenario: Dealer User
    Given I am on dealer management page
    When I edit an existing Dealer
    Then the Dealer  is updated
