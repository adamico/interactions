Feature: Manage Principes
  In order to make a Drug Interaction Database
  As a physician
  I want to create and manage principes

  Scenario: Principes List
    Given I have principes named acebutolol, amlodipine
    When I go to the list of principes
    Then I should see "acebutolol"
    And I should see "amlodipine"
