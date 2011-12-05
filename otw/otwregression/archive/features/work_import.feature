@works @tags
Feature: Import Works
  In order to have an archive full of works
  As an author
  I want to import new works
  

  Scenario: Import a single chapter story from ff.net
   Given I am logged in
   When I go to the new works page
  	Then I press Import From An Existing URL Instead?
  	  And I fill in the urls with "http://www.fanfiction.net/s/3129674/1/What_More_Than_Usual_Light"
    Then I press Import
    Then I should see "Preview"
      And Rating should be "Mature"
      And Fandoms should be "Firefly"
      And Work Title should be "What More Than Usual Light?"
      And Author should be "testy"
      And notes should contain "Thanks to my brilliant beta, Parenthetical."
	  And Additional tags should be "Romance"
	  And Stats contains "Published:2006-08-29"
	  And Content should be "'So you'll take the job then?'"
      And Content should be "The title comes from Ben Jonson's Hymenæi."
      And I should not see "FanFiction.Net"
      And I should not see "unleash your imagination"
      And I should not see "Tenar"
      And I should not see "Reviews:"
  	When I press Post
  	Then I should see "Work was successfully posted." Notice
  	  And Rating should be "Mature"
      And Fandoms should be "Firefly"
      And Work Title should be "What More Than Usual Light?"
      And Author should be "testy"
      And notes should contain "Thanks to my brilliant beta, Parenthetical."
	  And Additional tags should be "Romance"
	  And Stats contains "Published:2006-08-29"
	  And Content should be "'So you'll take the job then?'"
      And Content should be "The title comes from Ben Jonson's Hymenæi."
      And I should not see "FanFiction.Net"
      And I should not see "unleash your imagination"
      And I should not see "Tenar"
      And I should not see "Reviews:"
    When I am on testy's user page
        Then I should see my work posted with a Title of "What More Than Usual Light?"
  	
  	
  	
  	
  	
  Scenario: Import a multi-chapter story from ff.net
  Scenario: Import a single chapter story from lj 
  Scenario: Import a multi-chapter story for lj 
  Scenario: Import a story from a lj.com community 
  Scenario: Import a single chapter story for dw.org
  Scenario: Import a multi-chapter story for dw.org
  Scenario: Import a story from a dw.orb community