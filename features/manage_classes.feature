Feature: Manage Classes d'Interaction
  In order to update the IAM database
  As the admin
  I want to browse, create, destroy, update classes and their interactions

  Background:
    Given I have principes named acide acetylsalicylique, valsartan, trometamol, acide acetohydroxamique
      And I have classes named acide acetylsalicylique, antiagrégants plaquettaires, alcalinisants urinaires, acide acetohydroxamique

  Scenario: List classes
    When I go to the list of classes
    Then I should see "acide acetylsalicylique"
      And I should see "antiagrégants plaquettaires"
      And I should see "alcalinisants urinaires"
      And I should see "acide acetohydroxamique"

  Scenario: Create valid classe
    Given I have no classes
      And I am on the list of classes
    When I follow "Rajouter une classe d'interaction"
      And I fill in "Nom" with "ma nouvelle classe"
      And I press "Sauvegarder"
    Then I should see "La classe d'interaction a été créée avec succès."
      And I should see "ma nouvelle classe"
      And I should have 1 classes

  Scenario: Edit classe
    Given I am on the list of classes
    When I follow "Modifier"
      And I fill in "Nom" with "une autre classe"
      And I press "Sauvegarder"
    Then I should see "La classe d'interaction a été modifiée avec succès."
      And I should see "une autre classe"

  Scenario: Destroy classe
    Given I have 4 classes
      And I am on acide acetylsalicylique's interactions page
    When I press "Détruire"
    Then I should have 3 classes 

  Scenario: Link to a classe from the list of principes
    Given I have acide acetylsalicylique, antiagrégants plaquettaires as classes names for acide acetylsalicylique
    And I am on the list of principes
    When I follow "Interactions en propre"
    Then I should see "acide acetylsalicylique"

  Scenario: Show classe interactions
    Given I have antagonistes des récepteurs de l'angiotensine II, anticoagulants oraux as interagents names for acide acetylsalicylique
    When I am on acide acetylsalicylique's interactions page
    Then I should see "acide acetylsalicylique"
      And I should see "antagonistes des récepteurs de l'angiotensine II"
      And I should see "anticoagulants oraux"

  Scenario: Add new interactions to a class
    
  Scenario: Show classe principes
    Given I have abciximab (c 7e3b fab), clopidogrel, acide acetylsalicylique as principes names for antiagrégants plaquettaires
    When I am on antiagrégants plaquettaires's interactions page
    Then I should see "antiagrégants plaquettaires"
    Then I should see "(abciximab (c 7e3b fab), clopidogrel, acide acetylsalicylique)"
