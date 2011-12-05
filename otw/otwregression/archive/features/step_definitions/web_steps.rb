Given /^I am logged in$/ do
  puts "logged"
  @site.login_flow
end

Given /^I am not logged in$/ do
  @site.logout_flow
end

#Import From An Existing URL Instead?

Then /^I can see the "([^"]*)" link$/ do |arg1|
  $arg1 = arg1
  @site.header.link.exists? == true
end

Then /^can click on the "([^"]*)" link$/ do |arg1|
  $arg1 = arg1
  @site.header.link.click
end

When /^I press the "([^"]*)" button$/ do |arg1|
  $arg1 = arg1
  @site.header.button.click
end

When /^I am on weimar27's works page$/ do
  $url = "http://testarchive.transformativeworks.org/users/weimar27/works"
  @site.header.goto 
end

When /^I click on the "([^"]*)" link$/ do |arg1|
  $arg1 = arg1
  @site.header.link.click
end

Then /^the people page loads$/ do
  @site.header.people_search_link.exists? == true
end

Then /^the fandoms page loads$/ do
  @site.header.text.include?("Fandoms")
end

Then /^the works page loads$/ do
  @site.header.text.include?("works")
end

Then /^the bookmarks page loads$/ do
  @site.header.text.include?("bookmarks")
end

Then /^the collections page loads$/ do
  @site.header.text.include?("collection")
end

Then /^I should see "([^"]*)" Notice$/ do |arg1|
  begin  
  @site.header.flash_notice.wait_until_present
  @site.header.flash_notice.text.include?(arg1)
  rescue
  @site.header.notice.text.include?(arg1)  
  end
end

When /^I press Post$/ do
  @site.works_new_page.post_btn.click
end

When /^I go to the works page$/ do
  @site.header.works_link.click
end

Then /^I should see "([^"]*)"$/ do |arg1|
  @site.header.text.include?(arg1)
end

Then /^I should be taken to the preview page$/ do
  @site.header.text.include?("Preview")
end

Given /^the Page loads$/ do
  @site.header.home_intro.exists? == true 
  @site.header.home_intro.visible? == true 
  @site.header.home_intro.text.include?("We're a fan-created, fan-run, non-profit, non-commercial archive for transformative fanworks, like fanfiction and fanart. We're the Archive of Our Own, but you can call us AO3")
end

Then /^can click on the people link$/ do
  @site.header.people_link.click
end

Then /^can click on the fandoms link$/ do
  @site.header.fandoms_link.click
end

Then /^can click on the works link$/ do
  @site.header.works_link.click
end

Then /^I see the search box$/ do
  @site.header.search_text_field.exists? == true
  @site.header.search_btn.exists? == true
end

Then /^I see the bookmarks link$/ do
  @site.header.bookmarks_link.exists? == true
end

Then /^can click on the bookmarks link$/ do
  @site.header.bookmarks_link.click
end

Then /^I see the collections link$/ do
  @site.header.collections_link.exists? == true
end

Then /^can click on the collections link$/ do
  @site.header.collections_link.click
end

Then /^I see the tags link$/ do
  @site.header.tags_link.exists? == true
end

Then /^can click on the tags link$/ do
  @site.header.tags_link.click
end

Then /^I can see the people link$/ do
  @site.header.people_link.exists? == true
end

Then /^I can see the fandoms link$/ do
  @site.header.fandoms_link.exists? == true
end

Then /^I can see the works link$/ do
  @site.header.works_link.exists? == true
end