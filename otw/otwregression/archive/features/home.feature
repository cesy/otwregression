@smoke @home
Feature: Home Page
In order to have an archive 
The home page needs to load

  @read
  Scenario: The Home Page Loads
	Given the Page loads
	Then I can see the "people" link
	Then I can see the "bookmarks" link 
	Then I can see the "fandoms" link 
	Then I can see the "works" link  
	Then I can see the "collections" link
	Then I can see the "tags" link
    When I click on the "people" link
      Then the people page loads
    When I click on the "fandoms" link
	  Then the fandoms page loads
	When I click on the "works" link
      Then the works page loads
	Then I see the search box	
    When I click on the "bookmarks" link
		Then the bookmarks page loads	
    When I click on the "collections" link
		Then the collections page loads	
	 When I click on the "tags" link
		Then the collections page loads	

