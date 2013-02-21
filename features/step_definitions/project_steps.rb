
Given /^there is a project called "(.*?)"$/ do |name|
  @project = FactoryGirl.create(:project, :name => name)
end

Given /^I am on the home page$/ do
  visit path_to("home page")
end

When /^I follow "(.*?)"$/ do |arg1|
  click_link(arg1)
end

Then /^I should be on the project page for "(.*?)"$/ do |arg1|
  find('title').native.text.should have_content(arg1)
end

When /^I fill in "(.*?)" with "(.*?)"$/ do |arg1, arg2|
  fill_in(arg1, :with => arg2)
end

When /^I press "(.*?)"$/ do |arg1|
  click_on(arg1)
end

Then /^I should see "(.*?)"$/ do |arg1|
  page.should have_content(arg1)
end

Then /^I should not see "(.*?)"$/ do |arg1|
  page.should have_no_content(arg1)
end
