Given /^I have no bikes$/ do
end

Given /^I am a rider$/ do
  @rider = Rider.create
end

When /^I add a "([^"]*)" with make "([^"]*)" and model "([^"]*)"$/ do |equipment, make, model|
  visit root_path
  click_link "New #{equipment.titleize}"
  fill_in "#{equipment}_manufacturer", :with => make
  fill_in "#{equipment}_model", :with => model
  click_button 'Create'
end

Then /^my "([^"]*)" list should show "([^"]*)"$/ do |equipment, name|
  visit root_path
  click_link "My #{equipment.titleize.pluralize}"
  page.should have_content(name)
end
