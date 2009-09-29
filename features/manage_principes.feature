Feature: Manage Principes
  In order to modify the Drug Interaction Database
  As the admin
  I want to browse, create, destroy and update principes

  Background:
    Given I have principes named acide acetylsalicylique, valsartan, trometamol, acide acetohydroxamique
      And I have classes named acide acetylsalicylique, antiagrégants plaquettaires, alcalinisants urinaires, acide acetohydroxamique

  Scenario: List principes
    When I go to the list of principes
    Then I should see "acide acetylsalicylique"
    And I should see "valsartan"

  Scenario: Show a principe not having "interactions en propre"
    Given I have alcalinisants urinaires as classes names for trometamol
      And I am on the list of principes
    When I follow "trometamol"
    Then I should see "trometamol"
      And I should see "alcalinisants urinaires"

  Scenario: Show a principe having "interactions en propre"
    Given I have acide acetylsalicylique, antiagrégants plaquettaires as classes names for acide acetylsalicylique
      And I am on the list of principes
    When I follow "acide acetylsalicylique"
    Then I should see "acide acetylsalicylique"
      And I should see "Interactions en propre"
      And I should see "mais voir aussi :"
      And I should see "antiagrégants plaquettaires"

  Scenario: Show a principe having only "interactions en propre"
    Given I have acide acetohydroxamique as classes names for acide acetohydroxamique
      And I am on the list of principes
    When I follow "acide acetohydroxamique"
    Then I should see "acide acetohydroxamique"
      And I should see "Interactions en propre"
      And I should see "uniquement"

  Scenario: Create valid principe
    Given I have no principes
      And I am on the list of principes
    When I follow "Rajouter un principe actif"
      And I fill in "Nom" with "tartampionate de sodium"
      And I press "Sauvegarder"
    Then I should see "Le principe actif a été créé avec succès."
      And I should see "tartampionate de sodium"
      And I should have 1 principes

  Scenario: Edit principe
    Given I am on the list of principes
    When I follow "Modifier"
      And I fill in "Nom" with "aspirine"
      And I press "Sauvegarder"
    Then I should see "Le principe actif a été modifié avec succès."
      And I should see "aspirine"

  Scenario: Destroy principe
    Given I have 4 principes
      And I am on valsartan's classes page
    When I follow "Détruire"
    Then I should have 3 principes
