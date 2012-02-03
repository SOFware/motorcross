Then /^I should be shown the timer page$/ do
  current_path.should == new_timer_path
end

Then /^it should have a "([^"]*)" button$/ do |content|
  page.should have_selector('#' + content)
end

Given /^I am on the timer page$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I create a session$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see a start stopwatch button$/ do
  pending # express the regexp above with the code you wish you had
end