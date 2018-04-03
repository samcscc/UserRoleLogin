
Feature: Dealer Management
  Scenario: New Dealer
    Given I am on dealer management page
    When I search create a new Dealer
    Then The new Dealer is added to the list

