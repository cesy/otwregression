Then /^I fill in the urls with "([^"]*)"$/ do |arg1|
  @site.import_work.urls.set(arg1)
end

Then /^I should not see "([^"]*)"$/ do |arg1|
  @site.header.text.include?(arg1) == false
end

Then /^I press Import$/ do
  @site.import_work.import_btn.click
end

Then /^I press "([^"]*)"$/ do |arg1|
  @arg1 = arg1
  @site.header.button.click
end

Then /^I click the Import button$/ do
    @site.import_work.import_btn.click
end
