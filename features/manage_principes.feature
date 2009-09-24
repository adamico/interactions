Feature: Manage Principes
  In order to make a Drug Interaction Database
  As a physician
  I want to create and manage principes

  Background:
    Given I have principes named acide acetylsalicylique, valsartan, trometamol
      And I have classes named acide acetylsalicylique, antiagrégants plaquettaires, alcalinisants urinaires

  Scenario: List all principes
    When I go to the list of principes
    Then I should see "acide acetylsalicylique"
    And I should see "valsartan"

  Scenario: View a principe interaction classes
    Given I have alcalinisants urinaires as classes names for trometamol
      And I am on the list of principes
    When I follow "trometamol"
    Then I should see "trometamol"
      And I should see "alcalinisants urinaires"

  Scenario: Show "Interactions en propre" when they exist
    Given I have acide acetylsalicylique, antiagrégants plaquettaires as classes names for acide acetylsalicylique
      And I am on the list of principes
    When I follow "acide acetylsalicylique"
    Then I should see "acide acetylsalicylique"
      And I should see "Interactions en propre"
      And I should see "antiagrégants plaquettaires"
@focus
  Scenario: Create a valid principe
    Given I have no principes
      And I am on the list of principes
    When I follow "New Principe"
      And I fill in "Name" with "tartampionate de sodium"
      And I press "Submit"
    Then I should see "Principe was successfully created."
      And I should see "tartampionate de sodium"
      And I should have 1 principe
