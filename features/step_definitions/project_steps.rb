
Given /^there is a project called "(.*?)"$/ do |name|
  FactoryGirl.create(:project, :name => name)
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
