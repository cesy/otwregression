@works @tags @import @create
Feature: Import Works
  In order to have an archive full of works
  As an author
  I want to import new works
  
  @ffnet
  Scenario: Import a single chapter story from ff.net
   Given I am logged in
   When I click on the "post new" link
   When I click on the "Import From An Existing URL Instead?" link
  	  And I fill in the urls with "http://www.fanfiction.net/s/3129674/1/What_More_Than_Usual_Light"
    Then I press Import
    Then I should see "Preview"
      And Rating should be "Mature"
      And Fandoms should be "Firefly"
      And Work Title should be "What More Than Usual Light?"
      And Author should be "weimar27"
      And notes should contain "Thanks to my brilliant beta, Parenthetical."
	  And Additional tags should be "Romance"
	  And Stats contains "Published:2006-08-29"
	  And Content should be "'So you'll take the job then?'"
      And Content should be "The title comes from Ben Jonson's Hymenæi."
      And I should not see "FanFiction.Net"
      And I should not see "unleash your imagination"
      And I should not see "Tenar"
      And I should not see "Reviews:"
  	When I press the "Post" button 
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
  
  @ffnet
  Scenario: Import a multi-chapter story from ff.net
   Given I am logged in
   When I click on the "post new" link
   When I click on the "Import From An Existing URL Instead?" link
  	  And I fill in the urls with "http://www.fanfiction.net/s/6646765/1/IChing"
    Then I press Import
    Then I should see "Preview"
      And Rating should be "Mature"
      And Fandoms should be "Firefly"
      And Work Title should be "IChing"
      And Author should be "weimar27"
      And notes should contain "Thanks to my brilliant beta, Parenthetical."
	  And Additional tags should be "Drama"
	  And Stats contains "Published:2011-01-12"
	  And Content should be "Combat aids for soldiers responding to civil unrest on the edges of the system might be rendered unnecessary if it proves possible to treat the problem at its source."
      And Content should be "Bellumhydrochlorate trial: day 7"
      And I should not see "FanFiction.Net"
      And I should not see "unleash your imagination"
      And I should not see "Tenar"
      And I should not see "Reviews:"
  	When I press the "Post" button 
  	Then I should see "Work was successfully posted." Notice
      And Rating should be "Mature"
      And Fandoms should be "Firefly"
      And Work Title should be "IChing"
      And Author should be "weimar27"
      And notes should contain "Thanks to my brilliant beta, Parenthetical."
	  And Additional tags should be "Drama"
	  And Stats contains "Published:2011-01-12"
	  And Content should be "Combat aids for soldiers responding to civil unrest on the edges of the system might be rendered unnecessary if it proves possible to treat the problem at its source."
      And Content should be "Bellumhydrochlorate trial: day 7"
      And I should not see "FanFiction.Net"
      And I should not see "unleash your imagination"
      And I should not see "Tenar"
      And I should not see "Reviews:"
    When I follow "Next Chapter"    
     Then Content should be "Jayne. You'll keep a civil tongue in that mouth or I will sew it shut, is there an understanding between us?"
        And Content should be "There wasn't no place for a rutting lunatic on the ship. No rutting way."
  
  @lj
  Scenario: Import a single chapter story from lj 
  
  @lj
  Scenario: Import a multi-chapter story for lj 
  Scenario: Import a story from a lj.com community 
  Scenario: Import a single chapter story for dw.org
  Scenario: Import a multi-chapter story for dw.org
  Scenario: Import a story from a dw.orb community