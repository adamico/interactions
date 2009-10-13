Feature: Search IAM in the database
  In order to know if a drug has IAM
  As a lambda user
  I want to search the database by DCI or classe

  Scenario: Search IAM by DCI
    Given I am on the homepage
    When I fill in "Principe actif" with "acide acetylsalicylique"
    Then I should be on acide acetylsalicylique's interactions page
