##Given 
Given /^I'm logged out$/ do
  @site.header.log_out_btn.click
end

##When
When /^I click on the external link again$/ do
  @site.works_new_page.remix_ext_link.click
end

When /^I check Remix$/ do
  @site.works_new_page.remix_show.click
end

##Then 
Then /^I should be taken to the "([^"]*)" form$/ do |arg1|
  @site.header.header.text.include?(arg1)
end

Then /^Tags should be "([^"]*)"$/ do |arg1|
  @site.works_new_page.meta_freeform.text.include?(arg1)
end

Then /^Basic Tags$/ do
  @site.works_new_page.warning_choose.visible? == true
  @site.works_new_page.warning_violence.visible? == true
  @site.works_new_page.warning_death.visible? == true
  @site.works_new_page.warning_none.visible? == true
  @site.works_new_page.warning_noncon.visible? == true
  @site.works_new_page.warning_underage.visible? == true
  @site.works_new_page.cat_ff.visible? == true
  @site.works_new_page.cat_mm.visible? == true
  @site.works_new_page.cat_gen.visible? == true
  @site.works_new_page.cat_multi.visible? == true
  @site.works_new_page.cat_other.visible? == true
end

# 
# When /^I go to the new works page$/ do
  # @site.header.post_new_btn.click
# end

Then /^I should see the new works form$/ do
  @site.works_new_page.new_form.should exist
end

Then /^I select "([^"]*)" from Rating$/ do |arg1|
  @site.works_new_page.select_rating.select_value(arg1)
end

Then /^I fill in Fandoms with "([^"]*)"$/ do |arg1|
  @site.works_new_page.fandom_field.set(arg1)
  @site.header.tab
end

Then /^I fill in Work Title with "([^"]*)"$/ do |arg1|
  @site.works_new_page.title.set(arg1)
end

Then /^I fill in content with "([^"]*)"$/ do |arg1|
  @site.works_new_page.content.set(arg1)
end

Then /^I check "([^"]*)"$/ do |arg1|
  @site.works_new_page.warning_choose.set? == true
  @site.works_new_page.warning_none.set
end

Then /^Fandom should be "([^"]*)"$/ do |arg1|
  @site.works_new_page.meta_fandom.text.include?(arg1)
end

Then /^Warning should be "([^"]*)"$/ do |arg1|
  @site.works_new_page.meta_warning.text.include?(arg1)
end

Then /^I should see my work posted with a Title of "([^"]*)"$/ do |arg1|
  @site.works_index_page.work_blurb_title.wait_until_present
  @site.works_index_page.work_blurb_title.text == (arg1)
end

Then /^author "([^"]*)"$/ do |arg1|
  @site.works_index_page.work_blurb_author.text.include?(arg1)
end

Then /^I select "([^"]*)" from Category$/ do |arg1|
  $arg1 = arg1
  @site.works_new_page.category_box.set
end

Then /^I fill in Pairing with "([^"]*)"$/ do |arg1|
  @site.works_new_page.pairing_field.set(arg1)
  @site.header.tab
end

Then /^I fill in Character with "([^"]*)"$/ do |arg1|
  @site.works_new_page.char_field.set(arg1)
  @site.header.tab
end

Then /^I fill in Tags with "([^"]*)"$/ do |arg1|
  @site.works_new_page.add_tag_field.set(arg1)
  @site.header.tab
end

Then /^Author is "([^"]*)"$/ do |arg1|
  @site.works_new_page.byline.selected?("testy")
end

Then /^Category should be "([^"]*)"$/ do |arg1|
  @site.works_new_page.meta_category.text.include?(arg1)
end

Then /^Pairing should be "([^"]*)"$/ do |arg1|
  @site.works_new_page.meta_pairing.text.include?(arg1)
end

Then /^Character whould be "([^"]*)"$/ do |arg1|
  @site.works_new_page.meta_char.text.include?(arg1)
end

Then /^Fandoms should be "([^"]*)"$/ do |arg1|
    @site.works_new_page.meta_rating.text.include?(arg1) 
end

Then /^Work Title should be "([^"]*)"$/ do |arg1|
  @site.works_new_page.meta_title.text.include?(arg1)
end

Then /^Author should be "([^"]*)"$/ do |arg1|
  @site.header.user.text.include?(arg1)
end

Then /^Rating should be "([^"]*)"$/ do |arg1|
  @site.works_new_page.meta_rating.text.include?(arg1)
end

Then /^Content should be "([^"]*)"$/ do |arg1|
  @site.works_new_page.post_content(arg1)
end

Then /^I can add a Co\-Author "([^"]*)"$/ do |arg1|
  @site.works_new_page.coauthor.set
  @site.works_new_page.coauthor_field.set(arg1)
  @site.header.tab
end

Then /^the Remix Panel is visible$/ do
  @site.works_new_page.remix_panel.visible? == true
end

Then /^Notes should contain Inspired by Title by Author$/ do
  @site.works_new_page.post_notes.text.include?("Another Bedtime Story") #TODO: Make Generic
  @site.works_new_page.post_notes.text.include?("weimar27") #TODO: Make Generic
end

Then /^I fill in the url with the archive work$/ do
  #Get Archive URL
  $url = "http://testarchive.transformativeworks.org/works/222489"  
  @site.works_new_page.remix_url_field.set($url) #TODO: Generic
end

Then /^the Title should be a link$/ do
  @site.works_new_page.post_inswork.exists? == true 
end

Then /^the Author should be a link$/ do
  @site.works_new_page.post_inspauthor.exists? == true
end


Then /^I fill in the url with the external work$/ do
  @site.works_new_page.remix_url_field.set("http://weimar27.livejournal.com/44831.html")
end

Then /^I fill in "([^"]*)" for the external work Title$/ do |arg1|
  @site.works_new_page.remix_title_field.set(arg1) 
end

Then /^I fill in "([^"]*)" for the external work Author$/ do |arg1|
  @site.works_new_page.remix_author_field.set(arg1) 
end

Then /^the Title should be an external link$/ do
  @site.works_new_page.remix_ext_url.exists? 
  @site.works_new_page.remix_ext_url.text == "external_title" 
end

When /^I click on the external work$/ do
  @site.works_new_page.remix_ext_url.click
end

Then /^I should be taken to the work outside the archive$/ do
  @site.header.title.include?("An Archive Of Our Own") == false
end

Then /^Notes should contain Inspired by "([^"]*)" by "([^"]*)"$/ do |arg1, arg2|
  @site.works_new_page.post_notes.text.include?(arg1) 
  @site.works_new_page.post_notes.text.include?(arg2)
end

Then /^I should see an error message with the text "([^"]*)"$/ do |arg1|
  @site.header.error.text.include?(arg1)  
end

Then /^I check Restrict to registered users$/ do
  @site.works_new_page.work_restricted.set
end

Then /^I should not be able to view this work with the title "([^"]*)"$/ do |arg1|
    @site.works_index_page.work_restricted.exists? == false
end

Then /^I check the multiple chapters option$/ do
   @site.works_new_page.work_chapter.set
end

Then /^I enter the title for the chapter "([^"]*)"$/ do |arg1|
  @site.works_new_page.work_chapter_title.set(arg1)
end

Then /^I check translation$/ do
  @site.works_new_page.remix_translation.click
end

Then /^Notes should contain Translation of "([^"]*)" by "([^"]*)"$/ do |arg1, arg2|
  @site.works_new_page.post_notes.text.include?(arg1) 
  @site.works_new_page.post_notes.text.include?(arg2)
end


Then /^I fill in Summary with "([^"]*)"$/ do |arg1|
  @site.works_new_page.summary.set(arg1)
end

Then /^Summary should be "([^"]*)"$/ do |arg1|
  @site.works_new_page.post_summary.text.include?(arg1)
end

Then /^Additional tags should be "([^"]*)"$/ do |arg1|
  @site.works_new_page.meta_freeform.text.include?(arg1)
end

Then /^Stats contains "([^"]*)"$/ do |arg1|
  @site.works_new_page.meta_stats.text.include?(arg1)
end


Then /^notes should contain "([^"]*)"$/ do |arg1|
  @site.works_new_page.post_notes.text.include?(arg1)
end

Then /^I fill in Gift this work to with "([^"]*)"$/ do |arg1|
  @site.works_new_page.gift_field.set(arg1)
end

Then /^Recipient should be a link$/ do
  @site.header.user.text.include?("weimar27")
end

Then /^I check Notes$/ do
  @site.works_new_page.notes_show.click
end

Then /^I check End Notes$/ do
  @site.works_new_page.endnotes_show.click
end

Then /^I fill in the Notes with "([^"]*)"$/ do |arg1|
  @site.works_new_page.notes_beg_field.set(arg1)
end

Then /^End Notes should contain "([^"]*)"$/ do |arg1|
  @site.works_new_page.post_endnotes.text.include?(arg1)
end

Then /^I am taken to the endnotes$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I fill in the End Notes with "([^"]*)"$/ do |arg1|
  @site.works_new_page.endotes_field.set(arg1)
end
