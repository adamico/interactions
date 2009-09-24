Feature: Manage Principes
  In order to make a Drug Interaction Database
  As a physician
  I want to create and manage principes

  Scenario: List all principes
    Given I have principes named Acide acetylsalicylique, Valsartan
    When I go to the list of principes
    Then I should see "Acide acetylsalicylique"
    And I should see "Valsartan"

  Scenario: View a principe interaction classes
    Given I have principes named acide acetylsalicylique, trometamol
      And I have classes named acide acetylsalicylique, antiagrégants plaquettaires, alcalinisants urinaires
      And I have alcalinisants urinaires as classes names for trometamol
      And I am on the list of principes
    When I follow "trometamol"
    Then I should see "trometamol"
      And I should see "alcalinisants urinaires"

  Scenario: Show "Interactions en propre" when they exist
    Given I have principes named acide acetylsalicylique, trometamol
      And I have classes named acide acetylsalicylique, antiagrégants plaquettaires, alcalinisants urinaires
      And I have acide acetylsalicylique, antiagrégants plaquettaires as classes names for acide acetylsalicylique
      And I am on the list of principes
    When I follow "acide acetylsalicylique"
    Then I should see "acide acetylsalicylique"
      And I should see "Interactions en propre"
      And I should see "antiagrégants plaquettaires"
