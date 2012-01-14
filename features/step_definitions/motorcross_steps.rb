Given /^I am a rider$/ do
  @rider = Rider.create
end

When /^I add a "([^"]*)" with make "([^"]*)" and model "([^"]*)"$/ do |equipment, make, model|
  create_new(equipment) do
    fill_in "#{equipment}_manufacturer", :with => make
    fill_in "#{equipment}_model", :with => model
  end
end

Then /^my "([^"]*)" list should show "([^"]*)"$/ do |controller, name|
  visit root_path
  click_link "#{controller.titleize.pluralize}"
  page.should have_content(name)
end

When /^I add a track called "([^"]*)" at the "([^"]*)" venue$/ do |track_name, venue_name|
  venue = Venue.create(:name => venue_name)
  soil = Soil.create(:name => 'sand')
  track_type = TrackType.create(:name => 'motocross')
  create_new('track') do
    fill_in "track_name", :with => track_name
    fill_in "track_altitude", :with => 3000
    select(soil.name, :from => 'track_soil_id')
    select(track_type.name, :from => 'track_track_type_id')
    select(venue.name, :from => 'track_venue_id')
    
  end
end

When /^I add a venue called "([^"]*)"$/ do |venue_name|
  create_new('venue') do
    fill_in "venue_name", :with => venue_name
  end
end

When /^I add a soil type "([^"]*)"$/ do |soil|
  create_new("soil type") do
    fill_in "soil_name", :with => 'sand'
  end
end

When /^I add a track type "([^"]*)"$/ do |name|
  create_new("track type") do
    fill_in "track_type_name", :with => name
  end
end

When /^I add a racing series "([^"]*)"$/ do |racing_series|
  create_new("racing series") do
    fill_in "racing_series_name", :with => racing_series
  end
end

Then /^show me the page$/ do
  save_and_open_page
end

private
  def create_new(object)
    visit root_path
    click_link "New #{object.titleize}"
    yield
    click_button 'Create'
  end
