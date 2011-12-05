@works @tags
Feature: Create Works
  In order to have an archive full of works
  As an author
  I want to create new works

@normal
  Scenario: Create a new minimally valid work
   Given I am logged in  
    When I click on the "post new" link	
    Then I should see the new works form
      And Basic Tags
      And I select "Not Rated" from Rating
      And I check "No Archive Warnings Apply"
      And I fill in Fandoms with "Supernatural"
      And I fill in Work Title with "All Hell Breaks Loose"
      And I fill in content with "Bad things happen, etc."
    When I press the "Preview" button	
    Then I should be taken to the preview page
      And Rating should be "General Audiences"
      And Fandom should be "Supernatural"
      And Warning should be "No Archive Warnings Apply"
      And Content should be "Bad things happen, etc."
    When I press the "Post" button	
    Then I should see "Work was successfully posted." Notice
      And Author should be "testy"    
      And Work Title should be "All Hell Breaks Loose"
      And Rating should be "Not Rated"
      And Fandom should be "Supernatural"
      And Warning should be "No Archive Warnings Apply"
      And Content should be "Bad things happen, etc."
    When I click on the "works" link
    Then I should see my work posted with a Title of "All Hell Breaks Loose" 
      And author "testy"
   
   @normal @test
   Scenario: Create a new minimally valid work without previewing  
    Given I am logged in  
    When I click on the "post new" link
    Then I should see the new works form
      And Basic Tags
      And I select "Not Rated" from Rating
      And I check "No Archive Warnings Apply"
      And I fill in Fandoms with "Supernatural"
      And I fill in Work Title with "Bad Day at Black Rock"
      And I fill in content with "Bad things happen, etc."
    When I press the "Post without preview" button
    Then I should see "Work was successfully posted." Notice
      And Author should be "testy"    
      And Work Title should be "Bad Day at Black Rock"
      And Rating should be "Not Rated"
      And Fandoms should be "Supernatural"
      And Warning should be "No Archive Warnings Apply"
      And Content should be "Bad things happen, etc."
	When I click on the "works" link
    Then I should see my work posted with a Title of "Bad Day at Black Rock" 
      And author "testy"
   
   
   @normal
   Scenario: Create a new work with no coauthor not a remix not a gift 
   	Given I am logged in  
    When I click on the "post new" link
   	Then I should see the new works form 
   	  And Basic Tags
      And I select "Not Rated" from Rating
      And I select "M/M" from Category
      And I fill in Pairing with "Dean Winchester/Castiel"
      And I fill in Character with "Dean Winchester"
      And I fill in Tags with "Testing" 
      And Author is "testy"
      And I fill in Summary with "Summary"
      And I check "No Archive Warnings Apply"
      And I fill in Fandoms with "Supernatural"
      And I fill in Work Title with "Lazarus Rising"
      And I fill in content with "Bad things happen, etc." 
    When I press the "Preview" button
    Then I should be taken to the preview page
      And Category should be "M/M"
      And Pairing should be "Dean Winchester/Castiel"
      And Character whould be "Dean Winchester"
      And Rating should be "Not Rated"
      And Fandoms should be "Supernatural"
      And Warning should be "No Archive Warnings Apply"
      And Work Title should be "Lazarus Rising"
      And Author should be "testy"
      And Content should be "Bad things happen, etc."
      And Summary should be "Summary"
    When I press the "Post" button 
    Then I should see "Work was successfully posted." Notice
      And Category should be "M/M"
      And Pairing should be "Dean Winchester/Castiel"
      And Character whould be "Dean Winchester"
      And Rating should be "Not Rated"
      And Fandoms should be "Supernatural"
      And Warning should be "No Archive Warnings Apply"
      And Work Title should be "Lazarus Rising"
      And Author should be "testy"
	  And Content should be "Bad things happen, etc."
      And Summary should be "Summary"	  
	When I click on the "works" link
    Then I should see my work posted with a Title of "Lazarus Rising"
      And author "testy"
    
   @normal
   Scenario: Create a new work with no coauthor not a remix not a gift 
   	Given I am logged in
    When I click on the "post new" link 
   	Then I should see the new works form 
   	  And Basic Tags
      And I select "Not Rated" from Rating
      And I select "M/M" from Category
      And I fill in Pairing with "Dean Winchester/Castiel"
      And I fill in Character with "Dean Winchester"
      And I fill in Tags with "Testing" 
      And Author is "testy"
      And I check "No Archive Warnings Apply"
      And I fill in Fandoms with "Supernatural"
      And I fill in Work Title with "Wendigo"
      And I fill in content with "Bad things happen, etc." 
      And I fill in Summary with "Summary"     
    When I press the "Post without preview" button 
    Then I should see "Work was successfully posted." Notice
      And Category should be "M/M"
      And Pairing should be "Dean Winchester/Castiel"
      And Character whould be "Dean Winchester"
      And Rating should be "Not Rated"
      And Fandoms should be "Supernatural"
      And Warning should be "No Archive Warnings Apply"
      And Work Title should be "Wendigo"
      And Author should be "testy"
	  And Content should be "Bad things happen, etc."
	  And Summary should be "Summary"
	When I click on the "works" link
    Then I should see my work posted with a Title of "Wendigo"
      And author "testy"
      
   @normal
   Scenario: Create a new work with a coauthor 
    Given I am logged in
    When I click on the "post new" link 
    Then I should see the new works form
      And Basic Tags
      And I select "Not Rated" from Rating
      And I can add a Co-Author "weimar27"
      And I check "No Archive Warnings Apply"
      And I fill in Fandoms with "Supernatural"
      And I fill in Work Title with "Kids"
      And I fill in content with "Bad things happen, etc."
    When I press the "Preview" button
    Then I should be taken to the preview page
      And Rating should be "Not Rated"
      And Author should be "testy, weimar27"
      And Fandom should be "Supernatural"
      And Warning should be "No Archive Warnings Apply"
      And Content should be "Bad things happen, etc."
    When I press the "Post" button
    Then I should see "Work was successfully posted." Notice  
      And Work Title should be "Kids"
      And Author should be "testy, weimar27"
      And Rating should be "Not Rated"
      And Fandom should be "Supernatural"
      And Warning should be "No Archive Warnings Apply"
      And Content should be "Bad things happen, etc."
	When I click on the "works" link
    Then I should see my work posted with a Title of "Kids"
      And author "testy" 
      And author "weimar27" 
    
    @error @notstarted
	Scenario: Create a new work with an invalid coauthor
	
	@normal	
	Scenario: Create a new work that is a remix of a work from the Archive
	 Given I am logged in
    When I click on the "post new" link 
	 Then I should see the new works form 
	  And Basic Tags
      And I select "Not Rated" from Rating
       And I check "No Archive Warnings Apply"
       And I fill in Fandoms with "Supernatural"
       And I fill in Work Title with "Remix"
       And I fill in content with "Bad things happen, etc."
     When I check Remix
       Then the Remix Panel is visible
     Then I fill in the url with the archive work  
     When I press the "Post without preview" button
     Then I should see "Work was successfully posted." Notice
       And Author should be "testy"    
       And Work Title should be "Kids"
       And Rating should be "Not Rated"
       And Fandom should be "Supernatural"
       And Warning should be "No Archive Warnings Apply"
       And Content should be "Bad things happen, etc."  
       And Notes should contain Inspired by "Aerial" by "astolat"
       And the Title should be a link
       And the Author should be a link
    
    @normal   	 
    Scenario: Create a new work that is a remix of an External work
     Given I am logged in
    When I click on the "post new" link 
	 Then I should see the new works form 
	   And Basic Tags
       And I select "Not Rated" from Rating
       And I check "No Archive Warnings Apply"
       And I fill in Fandoms with "Supernatural"
       And I fill in Work Title with "Remix"
       And I fill in content with "Bad things happen, etc."
     When I check Remix
       Then the Remix Panel is visible
     Then I fill in the url with the external work 
     Then I fill in "external_title" for the external work Title
     Then I fill in "external_author" for the external work Author 
     When I press the "Post without preview" button 
     Then I should see "Work was successfully posted." Notice
       And Author should be "testy"    
       And Work Title should be "Remix"
       And Rating should be "Not Rated"
       And Fandom should be "Supernatural"
       And Warning should be "No Archive Warnings Apply"
       And Content should be "Bad things happen, etc."  
       And Notes should contain Inspired by "external_title" by "external_author"
       And the Title should be an external link
     When I click on the external work
     Then I should see "This work isn't hosted on the Archive so this blurb might not be complete or accurate." Notice
     When I click on the external link again
     Then I should be taken to the work outside the archive
       
	@error
    Scenario: Error when saving a remix of an External work without entering the author 
    Given I am logged in 
    When I click on the "post new" link 
	 Then I should see the new works form 
	   And Basic Tags
       And I select "Not Rated" from Rating
       And I check "No Archive Warnings Apply"
       And I fill in Fandoms with "Supernatural"
       And I fill in Work Title with "Remix"
       And I fill in content with "Bad things happen, etc."
     When I check Remix
       Then the Remix Panel is visible
     Then I fill in the url with the external work        
     Then I fill in "external_title" for the external work Title
     When I press the "Post without preview" button
       Then I should see an error message with the text "A parent work outside the archive needs to have an author."   
    
    @error 
    Scenario: Error when saving a remix of an External work without entering the title     
    Given I am logged in 
    When I click on the "post new" link 
	 Then I should see the new works form 
	   And Basic Tags
       And I select "Not Rated" from Rating
       And I check "No Archive Warnings Apply"
       And I fill in Fandoms with "Supernatural"
       And I fill in Work Title with "Remix"
       And I fill in content with "Bad things happen, etc."
     When I check Remix
       Then the Remix Panel is visible
     Then I fill in the url with the external work   
     Then I fill in "external_author" for the external work Author 
     When I press the "Post without preview" button
       Then I should see an error message with the text "A parent work outside the archive needs to have a title."   
    
    @error 
    Scenario: Error when saving a remix of an External work without entering the author or title
    Given I am logged in 
    When I click on the "post new" link 
	 Then I should see the new works form 
	   And Basic Tags
       And I select "Not Rated" from Rating
       And I check "No Archive Warnings Apply"
       And I fill in Fandoms with "Supernatural"
       And I fill in Work Title with "Remix"
       And I fill in content with "Bad things happen, etc."
     When I check Remix
       Then the Remix Panel is visible
     Then I fill in the url with the external work   
     When I press the "Post without preview" button
       Then I should see an error message with the text "A parent work outside the archive needs to have a title. A parent work outside the archive needs to have an author. "   
    
    
    @alternate
    Scenario: Create a new work that is a translation of a work from the Archive
	 Given I am logged in 
    When I click on the "post new" link  
	 Then I should see the new works form 
	  And Basic Tags
      And I select "Not Rated" from Rating
       And I check "No Archive Warnings Apply"
       And I fill in Fandoms with "Supernatural"
       And I fill in Work Title with "Archive Translation"
       And I fill in content with "Bad things happen, etc."
     When I check Remix
       Then the Remix Panel is visible
       Then I check translation
     Then I fill in the url with the archive work  
     When I press the "Post without preview" button
     Then I should see "Work was successfully posted." Notice
       And Author should be "testy"    
       And Work Title should be "Archive Translation"
       And Rating should be "Not Rated"
       And Fandom should be "Supernatural"
       And Warning should be "No Archive Warnings Apply"
       And Content should be "Bad things happen, etc."  
       And Notes should contain Translation of "external_title" by "external_author" 
       And the Title should be a link
       And the Author should be a link
    
    @alternate
    Scenario: Create a new work that is a translation of an External work 
     Given I am logged in 
    When I click on the "post new" link 
	 Then I should see the new works form 
	   And Basic Tags
       And I select "Not Rated" from Rating
       And I check "No Archive Warnings Apply"
       And I fill in Fandoms with "Supernatural"
       And I fill in Work Title with "External Translation"
       And I fill in content with "Bad things happen, etc."
     When I check Remix
       Then the Remix Panel is visible
     Then I fill in the url with the external work 
     Then I fill in "external_title" for the external work Title
     Then I fill in "external_author" for the external work Author 
     Then I check translation
     When I press the "Post without preview" button
     Then I should see "Work was successfully posted." Notice
       And Author should be "testy"    
       And Work Title should be "External Translation"
       And Rating should be "Not Rated"
       And Fandom should be "Supernatural"
       And Warning should be "No Archive Warnings Apply"
       And Content should be "Bad things happen, etc."  
       And Notes should contain Translation of "external_title" by "external_author"
       And the Title should be an external link
     When I click on the external work
     Then I should see "This work isn't hosted on the Archive so this blurb might not be complete or accurate." Notice
     When I click on the external link again
     Then I should be taken to the work outside the archive

    @normal
    Scenario: Can make work visible only to register users
    Given I am logged in 
    When I click on the "post new" link 
    Then I should see the new works form 
       And I select "Not Rated" from Rating
       And I check "No Archive Warnings Apply"
       And I fill in Fandoms with "Supernatural"
       And I fill in Work Title with "Restricted"
       And I fill in content with "Bad things happen, etc."
       And I check Restrict to registered users
     When I press the "Post without preview" button
   Given I'm logged out
	When I click on the "works" link
     Then I should not be able to view this work with the title "Restricted"	
   Given I am logged in 
   	 Then I should see my work posted with a Title of "Restricted"
   	 
   @normal 
   Scenario: Can make new work a chapter
   Given I am logged in 
    When I click on the "post new" link 
    Then I should see the new works form 
       And I select "Not Rated" from Rating
       And I check "No Archive Warnings Apply"
       And I fill in Fandoms with "Supernatural"
       And I fill in Work Title with "Supernatural"
       And I fill in content with "Bad things happen, etc."
       And I check the multiple chapters option
       And I enter the title for the chapter "Pilot"
     When I press the "Post without preview" button
   Then I should see "Work was successfully posted." Notice
      And Author should be "testy"    
      And Work Title should be "Supernatural"
      And Rating should be "Not Rated"
      And Fandom should be "Supernatural"
      And Warning should be "No Archive Warnings Apply"
      And Content should be "Bad things happen, etc."
	When I click on the "works" link
    Then I should see my work posted with a Title of "Supernatural"
      And author "testy"  
  
  @normal
  Scenario: Can add a gift recpient for an archive user to a new work
  Given I am logged in  
    When I click on the "post new" link
    Then I should see the new works form
      And Basic Tags
      And I select "Not Rated" from Rating
      And I check "No Archive Warnings Apply"
      And I fill in Fandoms with "Supernatural"
      And I fill in Work Title with "Beware of Trojans"
      And I fill in Gift this work to with "weimar27"
      And I fill in content with "Bad things happen, etc."
    When I press the "Post without preview" button
    Then I should see "Work was successfully posted." Notice
      And Author should be "testy"    
      And Work Title should be "Beware of Trojans"
      And Rating should be "Not Rated"
      And Fandoms should be "Supernatural"
      And Warning should be "No Archive Warnings Apply"
      And Content should be "Bad things happen, etc."
      And notes should contain "For weimar27"
      And Recipient should be a link	
   
  @normal
  Scenario: Can add a gift recpient for an external user to a new work
  Given I am logged in  
    When I click on the "post new" link
    Then I should see the new works form
      And Basic Tags
      And I select "Not Rated" from Rating
      And I check "No Archive Warnings Apply"
      And I fill in Fandoms with "Supernatural"
      And I fill in Work Title with "Beware of Trojans"
      And I fill in Gift this work to with "external_user"
      And I fill in content with "Bad things happen, etc."
    When I press the "Post without preview" button
    Then I should see "Work was successfully posted." Notice
      And Author should be "testy"    
      And Work Title should be "Beware of Trojans"
      And Rating should be "Not Rated"
      And Fandoms should be "Supernatural"
      And Warning should be "No Archive Warnings Apply"
      And Content should be "Bad things happen, etc."
      And notes should contain "For external_user"
      
  @normal 
  Scenario: Can add Notes     
  Given I am logged in  
    When I click on the "post new" link
    Then I should see the new works form
      And Basic Tags
      And I select "Not Rated" from Rating
      And I check "No Archive Warnings Apply"
      And I fill in Fandoms with "Supernatural"
      And I fill in Work Title with "Wishful Thinking"
      And I fill in content with "Bad things happen, etc."
      And I check Notes
      And I fill in the Notes with "Beginning Notes"
    When I press the "Post without preview" button
    Then I should see "Work was successfully posted." Notice
      And Author should be "testy"    
      And Work Title should be "Wishful Thinking"
      And Rating should be "Not Rated"
      And Fandoms should be "Supernatural"
      And Warning should be "No Archive Warnings Apply"
      And Content should be "Bad things happen, etc."  
      And notes should contain "Beginning Notes"
  
  @normal  
  Scenario: Can add End Notes
  Given I am logged in  
    When I click on the "post new" link
    Then I should see the new works form
      And Basic Tags
      And I select "Not Rated" from Rating
      And I check "No Archive Warnings Apply"
      And I fill in Fandoms with "Supernatural"
      And I fill in Work Title with "Magnificent Seven"
      And I fill in Gift this work to with "astolat"
      And I fill in content with "Bad things happen, etc."
      And I check End Notes
      And I fill in the End Notes with "End Notes"
    When I press the "Post without preview" button
    Then I should see "Work was successfully posted." Notice
      And Author should be "testy"    
      And Work Title should be "Magnificent Seven"
      And Rating should be "Not Rated"
      And Fandoms should be "Supernatural"
      And Warning should be "No Archive Warnings Apply"
      And Content should be "Bad things happen, etc."  
      And notes should contain "(See the end of the work for notes)"
      And End Notes should contain "End Notes"
      When I click on the "notes" link
      	#TODO: Then I am taken to the endnotes
        
        

	
      