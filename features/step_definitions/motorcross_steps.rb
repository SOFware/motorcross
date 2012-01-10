Given /^I have no bikes$/ do
end

Given /^I am a rider$/ do
  @rider = Rider.create
end

When /^I add a "([^"]*)"$/ do |bike|
  visit new_bike_path
  fill_in 'bike_name', :with => bike
  # fill_in 'bike_name', :with => bike
  click_button 'Create'
end

# Then /^my bike list should show "([^"]*)"$/ do |bike|
#   visit bikes_path
#   page.should have_content(bike)  
# end

When /^I add a\/an "([^"]*)" named "([^"]*)"$/ do |equipment, name|
  fill_in "#{equipment}_name", :with => name
  click_button 'Create'
end

When /^I add a "([^"]*)" named "([^"]*)"$/ do |equipment, name|
  visit new_bike_path
  step 'I add a/an "bike" named "' + name + '"'
end

Then /^my "([^"]*)" list should show "([^"]*)"$/ do |equipment, name|
  visit bikes_path
  page.should have_content(bike)  
end
