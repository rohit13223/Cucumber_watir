Feature: Create Profile Feature
  As a Expert user 
  I should be able to create and Update Profile

  Scenario: To verify, Expert is able to upload resume on Autofill profile page
    When User login as newly signed-up expert
    And Expert uploaded resume on Autofill Page
    Then Resume should be uploaded succesfully

  Scenario: To verify, Basic info and Expertise details should be fetched when expert uploaded resume
    When User login as newly signed-up expert
    And Expert uploaded resume on Autofill page
    Then Basic info and Expertise details should be fetched

  Scenario: To verify, Validation should display when Expert Continue without Uploading Resume/Linkedin URL on 'AutoFill' Page
    When User login as newly signed-up expert
    And Expert try to Continue without Uploading Resume/Linkedin URL on Autofill page
    Then Proper Validation should display for Resume/Linkedin URL

  Scenario: To Verify, Signed-up Expert is redirecting to 'Autofill' profile page
    When User signed-up as an Expert
    Then Expert should be redirected to Autofill profile page

  Scenario: To Verify, Signed-up Expert is able to fill all the required details and Submit profile
    When User signed-up as an Expert
    And Expert fill all the details and submit profile
    Then Expert profile should be submitted

  Scenario: To Verify, Expert should be able to continue after filling details on 'Auto-fill' page
    When User login as newly signed-up expert
    And Expert fill all the details on Autofill page and click on continue button
    Then Expert should be redirected to Basic info page

  Scenario: Expert should be able to continue after filling details onils on 'Expertise' page
    When User login as newly signed-up expert
    And Expert fill all the details on Expertise page and click on continue button
    Then Expert should be redirected to Work Arrangment page

  Scenario: To Verify, Expert should be able to submit profile through preview page
    When User login as newly signed-up expert
    And Expert fill all the details and click on Submit button on Preview page
    Then Expert profile should be submitted

  Scenario: To verify, Basic info and Expertise details should be fetched when expert uploaded resume
    When User login as newly signed-up expert
    And Expert uploaded on Autofill page
    Then Basic info and Expertise details should be fetched

Scenario: To verify, Validation message should display when user Continue without filling mendatory fields on 'Expertise' page
    When User login as newly signed-up expert
    And Expert try to Continue button without filling mendatory fields while on Expertise page
    Then Proper Validation should displayed for Expertise page

Scenario: To verify, Validation message should display when user Continue without filling mendatory fields on 'Work Arrangement' page
    When User login as newly signed-up expert
    And Expert try to Continue button without filling mendatory fields while on Work Arrangement page
    Then Proper Validation should displayed for Work Arrangement page

Scenario: To verify, Validation message should display when user Continue without filling mendatory fields on 'Work Arrangement' page
    When User login as newly signed-up expert
    And Expert try to Continue button without filling mendatory fields while on Work Arrangement page
    Then Proper Validation should displayed for Work Arrangement page

Scenario: To verify, Expert is able to Preview profile before submitting profile for review 
    When User login as newly signed-up expert
    And Expert Fill all the details on Work Arrangement page and Continue
    Then Expert should be redirected to Preview profile page

Scenario: To verify, Expert is able to Preview profile before submitting profile for review 
    When User login as newly signed-up expert
    And Expert Fill all the details on Work Arrangement page and Continue
    Then Expert should be redirected to Preview profile page

 Scenario: To verify Expert is able to edit Basic information on 'Basic info page
    When I login as expert user
    And Expert updates edit Basic information on Basic info page
    Then Expert should be able to see updated info on Preview profile page

 Scenario: To verify, Expert is able to update Highlights on 'Basic info page
    When I login as expert user
    And Expert updates Highlights on Basic info page
    Then Expert should be able to see updated Highlights on Preview profile page

 Scenario: To verify, Expert is able to add multiple areas of Expertise for Mentorship on 'Basic info page
    When I login as expert user
    And Expert add multiple areas of Expertise for Mentorship on Basic info page
    Then Expert should be able to see areas of Expertise for Mentorship on Preview profile page

 Scenario: To verify, Expert is able to update 'Diversity, Equity and Inclusion' details on 'Basic info page
    When I login as expert user
    And Expert update Diversity, Equity and Inclusion details on Basic info page
    Then Expert should be able to see added Diversity, Equity and Inclusion details

 Scenario: To verify, Expert is able to update Pitch information on 'Basic info page
    When I login as expert user
    And Expert updates Pitch information on Basic info page
    Then Expert should be able to see updated Pitch information

 Scenario: To verify, Expert is able to change Spectilize Practice area on 'Expertise' page
    When I login as expert user
    And Expert changes Spectilize Practice area on Expertise page
    Then Expert should be able to see changed Spectilize Practice area

 Scenario: To verify, Expert is able to change Industry on 'Expertise' page
    When I login as expert user
    And Expert changes Industry on Expertise page
    Then Expert should be able to see changed Industry

 Scenario: To verify, Expert is able to add Skillset on 'Expertise' page
    When I login as expert user
    And Expert added new Skillset on Expertise page
    Then Expert should be able to see added Skillset

 Scenario: To verify, Expert is able to remove Skillset on 'Expertise' page
    When I login as expert user
    And Expert remove added Skillset on Expertise page
    Then Expert should not be able to see removed Skillset

 Scenario: To verify, Expert is able to add Technology and tools on 'Expertise' page
    When I login as expert user
    And Expert added new Technology and tools on Expertise page
    Then Expert should be able to see added Technology and tools

 Scenario: To verify, Expert is able to remove Technology and tools on 'Expertise' page
    When I login as expert user
    And Expert remove added Technology and tools on Expertise page
    Then Expert should not be able to see removed Technology and tools
 
  Scenario: To verify, Expert is able to add experience on 'Expertise' page
    When I login as expert user
    And Expert is added experience on Expertise page
    Then Expert should be able to see added experience

  Scenario: To verify, Expert is able to edit experience on 'Expertise' page
    When I login as expert user
    And Expert edit any experience on Expertise page
    Then Expert should be able to see edited experience

  Scenario: To verify, Expert is able to to delete Experience on 'Expertise' page
    When I login as expert user
    And Expert deleted any added experience on Expertise page
    Then Expert should not be able to see deleted experience

 Scenario: To verify, Expert is able to add education on 'Expertise' page
    When I login as expert user
    And Expert is added education on Expertise page
    Then Expert should be able to see added education

  Scenario: To verify, Expert is able to edit education on 'Expertise' page
    When I login as expert user
    And Expert edit any education on Expertise page
    Then Expert should be able to see edited education

  Scenario: To verify, Expert is able to to delete education on 'Expertise' page
    When I login as expert user
    And Expert deleted any added education on Expertise page
    Then Expert should not be able to see deleted education

  Scenario: To verify, Expert is able to Add multiple Website links on 'Expertise' page
    When I login as expert user
    And Expert is Added multiple Website links on Expertise page
    Then Expert should be able to Add multiple Website links on Expertise page

 Scenario: To verify, Expert is able to remove Website links on 'Expertise' page
    When I login as expert user
    And Expert is remove any Added Website links on Expertise page
    Then Expert should not be able to removed multiple Website links on Expertise page

 Scenario: To verify, Expert is able to add Certification on 'Expertise' page
    When I login as expert user
    And Expert is added Certification on Expertise page
    Then Expert should be able to see added Certification

  Scenario: To verify, Expert is able to Edit Certification on 'Expertise' page
    When I login as expert user
    And Expert edit any added Certification on Expertise page
    Then Expert should be able to see edited Certification

Scenario: To verify, Expert is able to Delete Certification on 'Expertise' page
    When I login as expert user
    And Expert deleted any added Certification on Expertise page
    Then Expert should not be able to see deleted Certification

Scenario: To verify, Expert is able to Edit Work Arrangement
    When I login as expert user
    And Expert edit details on Work Arrangement Page
    Then Expert should be able to see edited work Arrangement page