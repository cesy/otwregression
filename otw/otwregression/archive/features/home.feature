@smoke @home
Feature: Home Page
In order to have an archive 
The home page needs to load

  @read @wip
  Scenario: The Home Page Loads
	Given the Page loads
	Then I can see the "people" link
	Then I can see the "bookmarks" link 
	Then I can see the "fandoms" link 
	Then I can see the "works" link  
	Then I can see the "collections" link
	Then I can see the "tags" link
    When I click on the "people" link
      Then I should be taken to the People page 
    When I click on the "fandoms" link
	  Then I should be taken to the "Fandoms" page
	When I click on the "works" link
      Then I should be taken to the "Works" page
	Then I see the search box	
    When I click on the "bookmarks" link
		Then I should be taken to the "Bookmarks" page 
    When I click on the "collections" link
		Then I should be taken to the "Collections" page 
	 When I click on the "tags" link
		Then I should be taken to the "Tags" page

