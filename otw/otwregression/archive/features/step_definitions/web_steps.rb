##Given
Given /^the Page loads$/ do
  @site.header.home_intro.exists? == true 
  @site.header.home_intro.visible? == true 
  @site.header.home_intro.text.include?("We're a fan-created, fan-run, non-profit, non-commercial archive for transformative fanworks, like fanfiction and fanart. We're the Archive of Our Own, but you can call us AO3")
end

Given /^I am logged in$/ do
  puts "logged"
  @site.login_flow
end

Given /^I am not logged in$/ do
  puts "logged out"
  @site.logout_flow
end

##When
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
  begin
  @site.header.link.click
  rescue 
  $arg1 = Regexp.new $arg1  
  @site.header.link.click  
  end
end

When /^I click on the "([^"]*)" link and respond Cancel to the prompt$/ do |arg1|
  @site.header.cancel
  $arg1 = arg1
  @site.header.link.click
end

When /^I click on the "([^"]*)" link and respond Ok to the prompt$/ do |arg1|
  @site.header.ok
  $arg1 = arg1
  @site.header.link.click
end

##Then
Then /^I can see the "([^"]*)" link$/ do |arg1|
  $arg1 = arg1
  @site.header.link.exists? == true
end

Then /^can click on the "([^"]*)" link$/ do |arg1|
  $arg1 = arg1
  begin
  @site.header.link.click
  rescue Watir::Exception
  $arg1 = Regexp.new $arg1  
  @site.header.link.click  
  end
end

Then /^I should be taken to the People page$/ do
   @site.header.people_search_link.should exist
end

Then /^I should see "([^"]*)" Notice$/ do |arg1|
  begin  
  @site.header.flash_notice.wait_until_present
  @site.header.flash_notice.text.include?(arg1)
  rescue
  @site.header.notice.text.include?(arg1)  
  end
end

Then /^I should see "([^"]*)"$/ do |arg1|
  @site.header.text.include?(arg1)
end

Then /^I should be taken to the preview page$/ do
  @site.header.text.include?("Preview")
end

Then /^I see the search box$/ do
  @site.header.search_text_field.exists? == true
  @site.header.search_btn.exists? == true
end


