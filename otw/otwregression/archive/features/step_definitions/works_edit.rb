When /^I view the work "([^"]*)"$/ do |arg1|
  $arg1 = arg1
  @site.header.link.click
end

When /^I view a work with Metadata$/ do
  $url = "http://testarchive.transformativeworks.org/works/279080"
  @site.header.goto
end

Then /^I should not see the "([^"]*)" link$/ do |arg1|
  $arg1 = arg1
  @site.header.link.should_not exist
end

Then /^I delete the Recpient$/ do
  @site.works_edit_page.delete_recpient.click
end

Then /^Notes should be empty$/ do
  puts @site.works_new_page.post_notes.text.should == "Notes:"
end

Then /^End Notes should be empty$/ do
  puts @site.works_new_page.post_notes.text.should == "Notes:"
end

Then /^the Notes Field is not visible$/ do
  @site.works_new_page.notes_beg_field.should_not be_visible
end
Then /^I uncheck Notes$/ do
  @site.works_new_page.notes_show.click
end

Then /^I uncheck End Notes$/ do
  @site.works_new_page.endnotes_show.click
end

Then /^the End Notes Field is not visible$/ do
  @site.works_new_page.endotes_field.should_not be_visible
end

Then /^End Notes should not contain "([^"]*)"$/ do |arg1|
  @site.works_new_page.post_endnotes.text.include?(arg1)
end

Then /^notes should not contain "([^"]*)"$/ do |arg1|
  @site.works_new_page.post_endnotes.text.include?(arg1)
end
Then /^I uncheck Restrict to registered users$/ do
   @site.works_new_page.work_restricted.checked? == true
   @site.works_new_page.work_restricted.set
   @site.works_new_page.work_restricted.checked?
   @site.works_new_page.work_restricted.click
   @site.works_new_page.work_restricted.checked? == true
end

Then /^I should be able to view this work with the title "([^"]*)"$/ do |arg1|
  $arg1 = arg1
  @site.header.link.click
end

Then /^I uncheck "([^"]*)" from Category$/ do |arg1|
  $arg1 = arg1
  @site.works_new_page.category_box.click
end

Then /^I clear Pairing$/ do
  @site.works_edit_page.delete_pairing.click
end

Then /^I clear Character with "([^"]*)"$/ do |arg1|
  @site.works_edit_page.delete_character.click
end

Then /^I clear Summary$/ do
  @site.works_new_page.summary.clear
end

Then /^I clear Tags$/ do
  @site.works_edit_page.delete_tags.click  
end

Then /^I uncheck "([^"]*)"$/ do |arg1|
  $arg1 = arg1
  @site.works_new_page.warning.click
end

Then /^Category should not exist$/ do
  @site.works_new_page.meta_category.should_not exist
end

Then /^Pairing should not exist$/ do
  @site.works_new_page.meta_pairing.should_not exist
end

Then /^Character shoule not exist$/ do
  @site.works_new_page.meta_char.should_not exist
end

Then /^Summary should not exist$/ do
  @site.works_new_page.post_summary.should_not exist
end

Then /^Tags should not exist$/ do
  @site.works_new_page.meta_freeform.should_not exist
end

Then /^Notes should not contain "([^"]*)"$/ do |arg1|
  @site.works_new_page.post_notes.text.should_not include(arg1)
end

Then /^the Remix Panel is not visible$/ do
  @site.works_new_page.remix_panel.should be_visible
end

Then /^Notes should not contain Inspired by "([^"]*)" by "([^"]*)"$/ do |arg1, arg2|
  @site.works_new_page.post_notes.text.include?(arg1)
  @site.works_new_page.post_notes.text.include?(arg2) 
end

When /^I view a work without an Archive Gift$/ do
  $url = "http://testarchive.transformativeworks.org/works/279082"
  @site.header.goto
end

When /^I view a work without an External Gift$/ do
  $url = "http://testarchive.transformativeworks.org/works/279081"
  @site.header.goto
end

When /^I view a work with an Existing Gift$/ do
  $url = "http://testarchive.transformativeworks.org/works/279083"
  @site.header.goto
end

When /^I view a work with Notes$/ do
  $url = "http://testarchive.transformativeworks.org/works/279084"
  @site.header.goto
end

When /^I view a work with End Notes$/ do
  $url = "http://testarchive.transformativeworks.org/works/279085"
  @site.header.goto
end

When /^I view a work that is a Remix$/ do
  $url = "http://testarchive.transformativeworks.org/works/279087"
  @site.header.goto
end

When /^I view a work that is Restricted$/ do
  $url = "http://testarchive.transformativeworks.org/works/279088"
  @site.header.goto
end

Then /^I should be able to view the previously Restricted Work$/ do
  $url = "http://testarchive.transformativeworks.org/works/279088"
  @site.header.goto
  @site.header.div_sign_in.should_not exist
end

Then /^I should not be able to view the Restricted Work$/ do
  $url = "http://testarchive.transformativeworks.org/works/279080"
  @site.header.goto  
  @site.header.div_sign_in.should exist
  @site.header.div_sign_in.text.should include("This story is only available to registered users of the Archive.")
end


Then /^the "([^"]*)" link should be visible$/ do |arg1|
  $arg1 = arg1
  @site.header.link.should exist
end

When /^I view my work$/ do
  $url = "http://testarchive.transformativeworks.org/works/279080"
  @site.header.goto 
  $arg1 = "Edit"
  @site.header.link.should exist
end

When /^I uncheck Remix$/ do
  @site.works_new_page.remix_show.click
end