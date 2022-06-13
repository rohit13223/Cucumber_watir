Feature: Create Profile Feature
  As a Expert user 
  I should be able to perform Various actions on Basic info page while creating profile

Background:
    Given I am on signin page

@basic_info
Scenario: Expert should be able to continue after filling details on 'Basic info' page
    When I signin as expert user
    And Expert fill all the details on Basic Info page and click on continue button
    Then Expert should be redirected to Expertise page

  Scenario: To verify, Validation message should display when user Continue without filling mendatory fields on 'Basic info page' Page
    When User login as newly signed-up expert
    And Expert try to Continue button without filling mendatory fields while on Basic info page
    Then Proper Validation should displayed for Basic info page

  Scenario: Expert should be able to continue after filling details on 'Basic info' page
    When User login as newly signed-up expert
    And Expert fill all the details on Basic Info page and click on continue button
    Then Expert should be redirected to Expertise page