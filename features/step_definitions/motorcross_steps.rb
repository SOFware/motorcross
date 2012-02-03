Given /^I am a rider$/ do
  # @rider = Rider.create
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

When /^I add a soil condition like "([^"]*)"$/ do |ground_conditions|
  create_new('ground condition') do
    fill_in "ground_condition_name", :with => ground_conditions
  end
end

When /^I add an event called "([^"]*)"$/ do |event_name|
  venue = Venue.create(:name => "NCMP")
  create_new('event') do
    fill_in "event_name", :with => event_name
    select(venue.name, :from => 'event_venue_id')
  end
end

When /^I add a weather condition like "([^"]*)"$/ do |weather_conditions|
  create_new('weather condition') do
    fill_in "weather_condition_name", :with => weather_conditions
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

# When /^I record on session on "([^"]*)"$/ do |date|
When /^I record a session$/ do 
  session = FactoryGirl.create(:session)
  visit root_path
  click_link "Record Session"
  select session.venue.name, :from => "session_venue_id"
  select session.track.name, :from => "session_track_id"
  session.attributes.each do |attr, val|
    selector = "session_#{attr}"
    unless page.all(selector).empty?
      fill_in selector, :with => val
      select(val, :from => selector)      
    end
  end
  click_button "Save"
end

When /^I add a session type called "([^"]*)"$/ do |type|
  create_new('session type') do
    fill_in "session_type_name", :with => type
  end
end

Then /^show me the page$/ do
  save_and_open_page
end

When /^I record all the information on the current session$/ do
  visit root_path
  click_link 'Record Session' 
  click_link 'tires'
  fill_in 'Front psi', :with => 13
end

Then /^I should be shown the home page$/ do
  pending # express the regexp above with the code you wish you had
end


private
  def create_new(object)
    visit root_path
    click_link "#{object.titleize.pluralize}"
    yield
    click_button 'Create'
  end
