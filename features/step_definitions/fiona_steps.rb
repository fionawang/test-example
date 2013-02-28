Given /^I am on yahoo\.com$/ do
  url = "http://yahoo.com"
  @browser.goto url
end

When /^I fill in the search field with "(.*?)"$/ do |search_query|
  @browser.text_field(:name => 'p').set search_query
end

When /^I click the search button$/ do
  @browser.button(:id => 'search-submit').click
end

Then /^I should see search results$/ do
  @browser.text.include? 'Cucumber - Wikipedia, the free encyclopedia'
end

Then /^I should save a screenshot called "(.*?)"$/ do |filename|
  # Save screenshot to file
  @browser.screenshot.save "screenshots/#{filename}"
end