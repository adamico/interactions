Feature: Manage Principes
  In order to make a Drug Interaction Database
  As a physician
  I want to create and manage principes

  Scenario: List all principes
    Given I have principes named Acide acetylsalicylique, Valsartan
    When I go to the list of principes
    Then I should see "Acide acetylsalicylique"
    And I should see "Valsartan"

  Scenario: List classes of interaction for principes
    Given I have principes named Acide acetylsalicylique, Valsartan
    And I am on the list of principes
    Then 

