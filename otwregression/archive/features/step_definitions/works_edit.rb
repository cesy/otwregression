When /^I view the work "([^"]*)"$/ do |arg1|
  $arg1 = arg1
  @site.header.link.click
end

Then /^I should not see the "([^"]*)" link$/ do |arg1|
  $arg1 = arg1
  @site.header.link.exists? == false
end

Then /^I delete the Recpient$/ do
  @site.works_edit_page.delete_recpient.click
end

When /^notes should not contain "([^"]*)"$/ do |arg1|
  @site.works_new_page.post_notes.text.include?(arg1)
end

