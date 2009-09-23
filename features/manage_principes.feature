Feature: Manage Principes
  In order to make a Drug Interaction Database
  As a physician
  I want to create and manage principes

  Scenario: Principes List
    Given I have principes named aspirine, valsartan
    When I go to the list of principes
    Then I should see "aspirine"
    And I should see "valsartan"
