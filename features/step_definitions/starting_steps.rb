require 'watir'
require 'watir-webdriver'

Given /^I have a url$/ do
  @url = 'http://google.com'
end

When /^I run the test$/ do
  @browser # = Watir::Browser.new :chrome
end

Then /^it should open the browser$/ do
  @browser.goto @url
end

Then /^it should save a screenshot$/ do
  @browser.screenshot.save "test2.png"
end