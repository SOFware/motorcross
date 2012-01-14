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

Then /^my "([^"]*)" list should show "([^"]*)"$/ do |controller, name|
  visit root_path
  click_link "My #{controller.titleize.pluralize}"
  page.should have_content(name)
end

When /^I create a race with track: "([^"]*)" date: "([^"]*)" type: "([^"]*)"$/ do |track, date, type|
  step %[I add a track called "#{track}" of type "#{type}"]
  visit root_path
  click_link "New Race"
  fill_in "race_date", :with => date
  select(track, :from => 'race_track_id')
  click_button 'Create'
end

When /^I add a track called "([^"]*)" of type "([^"]*)"$/ do |track_name, track_type|
  visit root_path
  click_link "New Track"
  fill_in "track_name", :with => track_name
  fill_in "track_track_type", :with => track_type
  click_button 'Create'
end



Then /^show me the page$/ do
  save_and_open_page
end
