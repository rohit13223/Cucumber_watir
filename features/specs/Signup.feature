Feature: Signup feature
  As a new user 
  I should be able to signup with different users

  @signup_client @smoke-test
  Scenario: As a Client user I should be able to Signup 
    When I am on client signup page
    And I submit the signup form as client with all the details
    Then I should be able to successfully signup

  @signup_expert_individual @smoke-test
  Scenario: As a Expert I should be able to Signup 
    When I am on expert signup page
    And I submit the signup form as indiviual expert with all the details
    Then I should be able to successfully signup

  @signup_expert_firm @smoke-test
  Scenario: As a Expert I should be able to Signup 
    When I am on expert signup page
    And I submit the signup form as expert of firm member with all the details
    Then I should be able to successfully signup

  @signup_trainee @smoke-test
  Scenario: As a Trainee user I should be able to Signup
    When I am on trainee signup page
    And I submit the signup form as trainee with all the details
    Then I should be able to successfully signup