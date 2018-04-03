#Define acceptance tests for different user roles.
Feature: User Roles

  Scenario: SuperUser Privileges
    Given I am logged in as superuser
    Then I should see the superuser homepage

  Scenario: Dealer Privileges
    Given I am logged in as dealer
    Then I should see the dealer homepage

  Scenario: Lender Privileges
    Given I am logged in as lender
    Then I should see the lender homepage



