Feature: Signin feature
  As a user with different roles
  I should be able to login into the application

  @signin_client @smoke-test
  Scenario: As a Client user I should be able to Signin
    When I am on signin page
    And I signin as client user
    Then I should be landed on client dashboard page

  @signin_expert @smoke-test
  Scenario: As a expert user I should be able to Signin
    When I am on signin page
    And I signin as expert user
    Then I should be landed on expert dashboard page

  @signin_trainee @smoke-test
  Scenario: As a trainee user I should be able to Signin
    When I am on signin page
    And I signin as trainee user
    Then I should be landed on trainee dashboard page

  @demo-regression
  Scenario: As a Client user I should not be able to Signin with invalid credentails
    When I am on signin page
    And I signin as client user with invalid credentails
    Then I should be see proper validation

  @demo-regression
  Scenario: As a expert user I should be able to Signin with invalid credentails
    When I am on signin page
    And I signin as expert user with invalid credentails
    Then I should be see proper validation

  @demo-regression
  Scenario: As a trainee user I should be able to Signin with invalid credentails
    When I am on signin page
    And I signin as trainee user with invalid credentails
    Then I should be see proper validation