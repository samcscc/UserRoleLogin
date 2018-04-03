
Feature: Dealer Management

  Scenario Outline: Dealer User
    Given I am on dealer management page
    When I edit an existing Dealer
    Then the Dealer  is updated
    Examples: