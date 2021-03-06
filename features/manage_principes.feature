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
      And I should see "trometamol"
      And I should see "acide acetohydroxamique"

  Scenario: Show a principe not having "interactions en propre"
    Given I have alcalinisants urinaires as classes names for trometamol
    When I am on trometamol's classes page
    Then I should see "trometamol"
      And I should see "alcalinisants urinaires"

  Scenario: Show a principe having "interactions en propre"
    Given I have acide acetylsalicylique, antiagrégants plaquettaires as classes names for acide acetylsalicylique
    When I am on acide acetylsalicylique's classes page
    Then I should see "acide acetylsalicylique"
      And I should see "Interactions en propre"
      And I should see "mais voir aussi :"
      And I should see "antiagrégants plaquettaires"

  Scenario: Show a principe having only "interactions en propre"
    Given I have acide acetohydroxamique as classes names for acide acetohydroxamique
    When I am on acide acetohydroxamique's classes page
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
    When I press "Détruire"
    Then I should have 3 principes

  Scenario: Go back to principes list from principe view
    Given I am on valsartan's classes page
    When I follow "Retourner à la liste"
    Then I should be on the list of principes

  Scenario: Show classes d'interaction on the list of principes
    Given I have acide acetylsalicylique, antiagrégants plaquettaires as classes names for acide acetylsalicylique
    When I go to the list of principes
    Then I should see "acide acetylsalicylique"
      And I should see "Interactions en propre"
      And I should see "mais voir aussi :"
      And I should see "antiagrégants plaquettaires"

  Scenario: Tell there are no classes d'interaction when it's the case
    Given I have principe named tartampionate de sodium
    When I go to the list of principes
    Then I should see "tartampionate de sodium"
      And I should see "pas d'interactions répertoriées"

  Scenario: Link to a classe when viewing a principes
    Given I have acide acetylsalicylique, antiagrégants plaquettaires as classes names for acide acetylsalicylique
      And I am on acide acetylsalicylique's classes page
    When I follow "Interactions en propre"
    Then I should see "acide acetylsalicylique"

@focus
  Scenario: Search for a principe's name
    Given I am on the list of principes
    When I fill in "Rechercher" with "salicylique"
      And I press "Rechercher"
    Then I should not see "valsartan"
