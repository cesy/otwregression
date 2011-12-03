@edit @works
Feature: Edit Works 
  In order to have an archive full of works
  As an author
  I want to edit existing works
  
  @normal
  Scenario: You can't edit a work unless you're logged in and it's your work
    Given I am not logged in
    When I am on testy's works page
    Then I should not see the "Edit" link
     And I should not see the "Edit Tags" link
    When I view the work "Wendigo"
    Then I should not see the "Edit" link
      And I should not see the "Add Chapter" link
      And I should not see the "Edit Tags" link
      And I should not see the "Bookmarks" link
    Given I am logged in 
    When I am on testy's works page
    When I view the work "Wendigo"
      And I can see the "Edit" link
      And I can see the "Add Chapter" link
      And I can see the "Edit Tags" link
      And I can see the "Bookmarks" link 
    
    @normal
    Scenario: As an author I can edit the story's metadata when viewing the work
      Given I am logged in 
      When I am on testy's works page
      When I view the work "Wendigo"
      When I click on the "Edit" link 
      Then I should see the new works form
        And I select "Teen And Up Audiences" from Rating
        And I select "F/M" from Category
        And I fill in Work Title with "Wendigos"
        And I fill in Pairing with "Dean Winchester/Original Female Character(s)"
        And I fill in Character with "Original Female Character(s)"
        And I fill in Tags with "Editing" 
        And Author is "testy"
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
      When I am on testy's works page
      When I view the work "Wendigos"
      When I click on the "Edit" link 
      Then I should see the new works form
        And I uncheck "F/M" from Category
        And I fill in Work Title with "Wendigos"
        And I clear Pairing 
        And I clear Character with "Original Female Character(s)"
        And I fill in Tags with "Editing" 
        And Author is "testy"
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
      When I am on testy's works page
      When I view the work "All Hell Breaks Loose"
      When I click on the "Edit" link 
      Then I should see the new works form
        And I can add a Co-Author "weimar27"
      When I press the "Post without preview" button
        And Author should be "testy, weimar27" 
     
     @normal
     Scenario: As an author I would like to add a Archive Gift Recpient to an existing work
      Given I am logged in  
      When I am on testy's works page
      When I view the work "Wishful Thinking"
        And I click on the "Edit" link
       Then I should see the new works form
        And Basic Tags
        And I fill in Gift this work to with "weimar27"
        And I fill in content with "Bad things happen, etc."
      When I press the "Post without preview" button
        And notes should contain "For weimar27"
        And Recipient should be a link	
   
    @normal
    Scenario: As an author I would like to add an External Gift Recpient to an existing work 
    Given I am logged in  
      When I am on testy's works page
      When I view the work "Bad Day at Black Rock"
        And I click on the "Edit" link
      Then I should see the new works form
        And Basic Tags
        And I fill in Gift this work to with "external_user"
        And I fill in content with "Bad things happen, etc."
      When I press the "Post without preview" button
        And notes should contain "For external_user"
    
    @normal 
    Scenario: Can remove a gift recpient from a work #Use Beware of Trojans
     Given I am logged in  
      When I am on testy's works page
      When I view the work "Beware of Trojans"
        And I click on the "Edit" link
      Then I should see the new works form
        And Basic Tags
        And I delete the Recpient 
      When I press the "Post without preview" button 
        And notes should not contain "For weimar27"
        
          
    @wip
    Scenario: Can edit existing notes #Use Wishful Thinking
      Given I am logged in
      When I am on testy's works page
      When I view the work "Beware of Trojans"
        And I click on the "Edit" link
      Then I should see the new works form
        And Basic Tags
        And I fill in the Notes with "New Beginning Notes"
      When I press the "Post without preview" button 
        Then notes should contain "New Beginning Notes" 
        
    @wip
    Scenario: Can delete notes #Wishful Thinking
      Given I am logged in
      When I am on testy's works page
      When I view the work "Wishful Thinking"
        And I click on the "Edit" link
      Then I should see the new works form
        And Basic Tags
        And I check Notes
      Then the Notes Field is not visible
        And I check Notes
        And the Notes Field is empty
      When I press the "Post without preview" button  
        Then notes should not contain "New Beginning Notes"
          
    @pending 
    Scenario: Can edit existing end notes #Use Magnificent Seven
    
    @pending
    Scenario: Can delete end notes #Use Magnificent Seven
    
    @pending 
    Scenario: Cannot Remove a remix association from someone else's work # Use Remix
    
    @pending
    Scenario: Can remove a remix association from your work #Use Remix 

    @pending 
    Scenario: Can remove the restriction to registered users # Use Restricted
    
    @pending
    Scenario: Can Add a Chapter to a work #Use Supernatural 
    
    @pending 
    Scenario: Can Remove Chapter from a work
    
    @pending 
    Scenario: Can access the edit form from the works index
    
    @pending 
    Scenario: Can access the edit form from my works index
    
    @pending
    Scenario: Can access the edit form when viewing a work