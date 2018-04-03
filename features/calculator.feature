Feature: Calculator

  Scenario:
    Given I access Calculator function
    When I input 1000 as loan amount
    Then I shall see 30 as monthly payment.