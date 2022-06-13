Feature: Create Profile Feature
  As a Expert user 
  I should be able to perform Various actions on Autofill page while creating profile

Background:
    Given I am on signin page

Scenario: To verify, Expert is redirecting to Autofill page after Succesfully signed up
    When I am on expert signup page
    And User signed up as new expert user
    Then Expert should be redirected to Autofill page

@resume-upload
Scenario: To verify, Expert is able to upload resume on Autofill profile page
    When I signin as expert user
    And Expert uploaded resume on Autofill Page
    Then Resume should be uploaded succesfully

Scenario: To verify, Basic info and Expertise details should be fetched when expert uploaded resume
    When User login as newly signed-up expert
    And Expert uploaded resume on Autofill page
    Then Basic info and Expertise details should be fetched

@Linkedin_url
Scenario: To verify, Expert is able to continue with Linkedin profile on Autofill profile page
    When I signin as expert user
    And Expert fill Linkedin URL on Autofill page and continue
    Then User should be redirected to Basic info page

Scenario: To verify, Basic info and Expertise details should be fetched when expert provide Linkedin profile link on Autofill page
    When User login as newly signed-up expert
    And Expert fill Linkedin URL on Autofill page and continue
    Then Basic info and Expertise details should be fetched from Linkedin profile

Scenario: To verify, Validation should display when Expert Continue without Uploading Resume/Linkedin URL on 'AutoFill' Page
    When User login as newly signed-up expert
    And Expert try to Continue without Uploading Resume/Linkedin URL on Autofill page
    Then Proper Validation should display for Resume/Linkedin URL