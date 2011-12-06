
Given /^I've started to create a work "([^"]*)"$/ do |arg1|
  $title = arg1
  $content = "This is my draft."
  @site.create_draft_flow(:rating => "General Audiences",:fandom => "Supernatural RPF",:title => $title,:content => $content)
end

Then /^I should be taken to the "([^"]*)" page$/ do |arg1|
  @site.header.header.text.include?(arg1)
end

Then /^the option "([^"]*)"$/ do |arg1|
  $arg1 = arg1
  @site.header.link.should be_visible
end

Then /^I should see my draft with a Title of "([^"]*)"$/ do |arg1|
  @site.header.works_blurb.text.should include(arg1)
end

Then /^I should be taken to the new works form$/ do
  @site.works_new_page.new_form.should exist
end

Then /^I should not see my draft with a Title of "([^"]*)"$/ do |arg1|
    @site.header.works_blurb.text.should_not include(arg1)
end