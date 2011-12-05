@update @works @tags
Feature: Edit Works 
  In order to have an archive full of works
  As an author
  I want to edit my work
  
  @normal
  Scenario: You can't edit a work unless you're logged in and it's your work
    Given I am not logged in
    When I am on weimar27's works page
    Then I should not see the "Edit" link
     And I should not see the "Edit Tags" link
    When I view the work "Edit Permissions"
    Then I should not see the "Edit" link
      And I should not see the "Add Chapter" link
      And I should not see the "Edit Tags" link
      And I should not see the "Bookmarks" link
    Given I am logged in 
    When I am on weimar27's works page
    When I view the work "Edit Permissions"
      And I can see the "Edit" link
      And I can see the "Add Chapter" link
      And I can see the "Edit Tags" link
      And I can see the "Bookmarks" link 
    
    @normal
    Scenario: As an author I can edit the story's metadata when viewing the work
      Given I am logged in
      When I view a work with Metadata
      When I click on the "Edit" link 
      Then I should see the new works form
        And I select "Teen And Up Audiences" from Rating
        And I select "F/M" from Category
        And I fill in Work Title with "Edit More Metadata"
        And I fill in Pairing with "Dean Winchester/Original Female Character(s)"
        And I fill in Character with "Original Female Character(s)"
        And I fill in Tags with "Editing" 
        And I fill in Summary with "I'm editing my summary"
        And I check "Graphic Depictions Of Violence"
        And I fill in Fandoms with "Supernatural RPF"
        And I fill in content with "Bad things happen, etc. Again." 
     When I press the "Preview" button 
     Then I should be taken to the preview page
        And Category should be "F/M"
        And Pairing should be "Dean Winchester/Original Female Character(s)"
        And Character whould be "Original Female Character(s)"
        And Rating should be "Teen And Up Audiences"
        And Fandoms should be "Supernatural RPF"
        And Warning should be "Teen and Up Audiences"
        And Work Title should be "Wendigos"
        And Author should be "testy"
	    And Content should be "Bad things happen, etc. Again."
        And Summary should be "I'm editing my summary"	
        And Tags should be "Editing"
     When I press the "Update" button 
     Then I should see "Work was successfully posted." Notice
        And Category should be "F/M"
        And Pairing should be "Dean Winchester/Original Female Character(s)"
        And Character whould be "Original Female Character(s)"
        And Rating should be "Teen And Up Audiences"
        And Fandoms should be "Supernatural RPF"
        And Warning should be "Teen and Up Audiences"
        And Work Title should be "Wendigos"
        And Author should be "testy"
	    And Content should be "Bad things happen, etc. Again."
        And Summary should be "I'm editing my summary"	
        And Tags should be "Editing"   
       
    @normal        
    Scenario: As an author I can delete the story's unrequired metadata when viewing the work 
      Given I am logged in
      When I view a work with Metadata
      When I click on the "Edit" link 
      Then I should see the new works form
        And I uncheck "F/M" from Category
        And I clear Pairing 
        And I clear Character with "Original Female Character(s)"
        And I clear Tags
        And I clear Summary
        And I uncheck "Graphic Depictions Of Violence"
        And I fill in content with "Bad things happen, etc." 
     When I press the "Preview" button 
     Then I should be taken to the preview page
        And Category should not exist
        And Pairing should not exist 
        And Character shoule not exist
	    And Content should be "Bad things happen, etc."
        And Summary should not exist	
        And Tags should not exist
     When I press the "Update" button 
     Then I should see "Work was successfully posted." Notice
        And Category should not exist
        And Pairing should not exist 
        And Character shoule not exist
	    And Content should be "Bad things happen, etc."
        And Summary should not exist	
        And Tags should not exist 
            
     @normal
     Scenario: As an author I would like to add a co-author
      Given I am logged in 
      When I view a work with Metadata
      When I click on the "Edit" link 
      Then I should see the new works form
        And I can add a Co-Author "testy"
      When I press the "Post without preview" button
        And Author should be "testy, weimar27" 
     
     @normal
     Scenario: As an author I would like to add an Archive Gift Recpient to an existing work
      Given I am logged in  
      When I view a work without an Archive Gift
        And I click on the "Edit" link
       Then I should see the new works form
        And Basic Tags
        And I fill in Gift this work to with "testy"
      When I press the "Post without preview" button
        And notes should contain "For testy"
        And Recipient should be a link	
   
    @normal
    Scenario: As an author I would like to add an External Gift Recpient to an existing work 
    Given I am logged in
      When I view a work without an External Gift
        And I click on the "Edit" link
      Then I should see the new works form
        And Basic Tags
        And I fill in Gift this work to with "external_user"
      When I press the "Post without preview" button
        And notes should contain "For external_user"
    
    @normal
    Scenario: Can remove a gift recpient from a work 
     Given I am logged in
      When I view a work with an Existing Gift
        And I click on the "Edit" link
      Then I should see the new works form
        And Basic Tags
        And I delete the Recpient 
      When I press the "Post without preview" button 
        And Notes should not contain "For testy"
        
          
    @normal
    Scenario: Can edit existing notes 
      Given I am logged in
      When I view a work with Notes
        And I click on the "Edit" link
      Then I should see the new works form
        And Basic Tags
        And I fill in the Notes with "New Beginning Notes"
      When I press the "Post without preview" button 
        Then notes should contain "New Beginning Notes"
        
    @normal
    Scenario: Can delete notes
      Given I am logged in
      When I view a work with Notes
        And I click on the "Edit" link
      Then I should see the new works form
        And Basic Tags
        When I uncheck Notes
           Then the Notes Field is not visible
        #And I check Notes
           #Then the Notes Field is empty (Hill, because of html that can't be tested)
      When I press the "Post without preview" button
        #works_new_page.post_notes should not be visible  
        Then Notes should be empty
          
    @normal
    Scenario: Can edit existing end notes
      Given I am logged in
      When I view a work with End Notes
        And I click on the "Edit" link
      Then I should see the new works form
        And Basic Tags
        And I fill in the End Notes with "New End Notes"
      When I press the "Post without preview" button
        Then End Notes should contain "End Notes"
      
    @normal
    Scenario: Can delete end notes
      Given I am logged in
      When I view a work with End Notes
        And I click on the "Edit" link
      Then I should see the new works form
        And Basic Tags
      When I uncheck End Notes
          Then the End Notes Field is not visible
      #And I check End Notes
        #And the End Notes Field is empty (Hill, because of html that can't be tested)
      When I press the "Post without preview" button
        #works_new_page.post_notes should not be visible  
        Then End Notes should be empty
    
            
    @norma @known
    Scenario: Can remove a remix association from your work  
      Given I am logged in
      When I view a work that is a Remix
        And I click on the "Edit" link
      Then I should see the new works form
        And Basic Tags
      When I uncheck Remix
        Then the Remix Panel is not visible
      When I press the "Post without preview" button
       Then Notes should not contain Inspired by "external_title" by "external_author"
         And the Title should be an external link      
        
    @normal @known
    Scenario: Can add a remix association for your work #Use Remix 
      Given I am logged in
      When I view a work with Metadata
        And I click on the "Edit" link
      Then I should see the new works form
        And Basic Tags
      When I check Remix
        Then the Remix Panel is visible
        Then I fill in the url with the external work 
         And I fill in "external_title" for the external work Title
         And I fill in "external_author" for the external work Author  
      When I press the "Post without preview" button
       Then Notes should contain Inspired by "external_title" by "external_author"
         And the Title should be an external link 
         
    @normal
    Scenario: Can remove the restriction to registered users
      Given I am logged in
      When I view a work that is Restricted
        And I click on the "Edit" link
      Then I should see the new works form
        And Basic Tags  
        And I uncheck Restrict to registered users
      When I press the "Post without preview" button
      Given I'm logged out
       Then I should be able to view the previously Restricted Work   
    
    @normal
    Scenario: Can add a restriction to registered users
      Given I am logged in
      When I view a work with Metadata
        And I click on the "Edit" link
      Then I should see the new works form
        And Basic Tags  
        And I check Restrict to registered users
      When I press the "Post without preview" button
      Given I'm logged out
       Then I should not be able to view the Restricted Work 
    
    @normal
    Scenario: Can access the edit form from the works index
      Given I am logged in 
      When I click on the "works" link
      Then the "Edit" link should be visible 
         And I click on the "Edit" link
      Then I should see the new works form   
    
    @normal 
    Scenario: Can access the edit form from my works index
      Given I am logged in 
      When I am on weimar27's works page
      Then the "Edit" link should be visible 
         And I click on the "Edit" link
      Then I should see the new works form 
    
    @normal
    Scenario: Can access the edit form when viewing a work
      Given I am logged in 
      When I view my work
      Then the "Edit" link should be visible 
         And I click on the "Edit" link
      Then I should see the new works form     

