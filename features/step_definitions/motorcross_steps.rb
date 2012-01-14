Given /^I have no bikes$/ do
end

Given /^I am a rider$/ do
  @rider = Rider.create
end

When /^I add a "([^"]*)" with make "([^"]*)" and model "([^"]*)"$/ do |equipment, make, model|
  go_to_page_for_new(equipment) do
    fill_in "#{equipment}_manufacturer", :with => make
    fill_in "#{equipment}_model", :with => model
  end
end

Then /^my "([^"]*)" list should show "([^"]*)"$/ do |controller, name|
  visit root_path
  click_link "My #{controller.titleize.pluralize}"
  page.should have_content(name)
end

When /^I add a track called "([^"]*)" of type "([^"]*)"$/ do |track_name, track_type|
  go_to_page_for_new('track') do
    fill_in "track_name", :with => track_name
    fill_in "track_track_type", :with => track_type
  end
end

When /^I add a venue called "([^"]*)"$/ do |venue_name|
  go_to_page_for_new('venue') do
    fill_in "venue_name", :with => venue_name
  end
end

Then /^show me the page$/ do
  save_and_open_page
end

private
  def go_to_page_for_new(object)
    visit root_path
    click_link "New #{object.titleize}"
    yield
    click_button 'Create'
  end
