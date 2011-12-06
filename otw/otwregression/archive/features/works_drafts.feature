@works @drafts
Feature: Create Drafts

  
  Scenario: Create a Draft
  Given I am logged in 
   And I've started to create a work "Draft to Post"
  When I press "Cancel"
   Then I should be taken to the "Unposted Drafts" page
     And the option "Edit"
     And the option "Edit Tags"
     And the option "Add Chapter"
     And the option "Post Draft"
     And the option "Delete Draft"
     And I should see "The work was not posted. It will be saved here in your drafts for one week, then cleaned up." Notice
     And I should see my draft with a Title of "Draft to Post" 
     And author "weimar27"  
  
  Scenario: Drafts cannot be found by search

  Scenario: Edit Draft
  Given I am logged in 
  When I am on weimar27's works page
    And I click on the "Drafts" link 
  When I click on the "Edit" link
    Then I should be taken to the "Edit Works" form
    And I fill in Work Title with "Editing Draft to Post"
    And I fill in Summary with "Summary"
    And I fill in content with "This is my draft. Bad things happen, etc."
    When I press "Preview"
      Then I should be taken to the preview page
        And Content should be "This is my draft. Bad things happen, etc."       
        And Work Title should be "Editing Draft to Post"
        And Summary should be "Summary"   
  
  Scenario: Edit Tags
  Given I am logged in 
  When I am on weimar27's works page
    And I click on the "Drafts" link 
  When I click on the "Edit Tags" link
    Then I should be taken to the "Edit Work Tags for Draft to Post" form
      And I select "Not Rated" from Rating
      And I select "M/M" from Category
      And I fill in Pairing with "Dean Winchester/Castiel"
      And I fill in Character with "Dean Winchester"
      And I fill in Tags with "Testing" 
      And I check "No Archive Warnings Apply"
      And I fill in Fandoms with "Supernatural"
    When I press "Preview" 
      Then I should be taken to the preview page 
      And Category should be "M/M"
      And Pairing should be "Dean Winchester/Castiel"
      And Character whould be "Dean Winchester"
      And Rating should be "Not Rated"
      And Fandoms should be "Supernatural"
      And Warning should be "No Archive Warnings Apply"
     
     
  Scenario: Posting drafts from drafts page
    Given I am logged in 
    When I am on weimar27's works page
    When I click on the "Drafts" link
    When I click on the "Post Draft" link
       Then I should see "Work was successfully posted." Notice
         And Author should be "weimar27"    
         And Work Title should be "Editing Draft to Post"
    
    Scenario: Cancel Deleting drafts from drafts page
      Given I am logged in
        And I've started to create a work "Draft to Cancel Deletion"
      When I am on weimar27's works page
       When I click on the "Drafts" link
        Then I should see my draft with a Title of "Draft to Cancel Deletion"
       When I click on the "Delete Draft" link and respond Cancel to the prompt
         And I should see my draft with a Title of "Draft to Cancel Deletion" 
     

    Scenario: Deleting drafts from drafts page
      Given I am logged in
        And I've started to create a work "Draft to Delete"
      When I am on weimar27's works page
       When I click on the "Drafts" link
        Then I should see my draft with a Title of "Draft to Delete"
       When I click on the "Delete Draft" link and respond Ok to the prompt
        Then I should see "Your work Draft Delete was deleted." Notice
         And I should not see my draft with a Title of "Draft to Delete"   
