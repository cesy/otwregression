When /^I follow "([^"]*)"$/ do |arg1|
  $arg1 = arg1
  @site.header.link.click
end