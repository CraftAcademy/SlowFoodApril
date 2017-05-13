Given(/^the following restaurants exists$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:restaurant, hash)
  end
end

Given(/^my location is set to "([^"]*)" lat and "([^"]*)" long$/) do |lat, lng|

end

Then(/^my position on the map should be approximately "([^"]*)" lat and "([^"]*)" long$/) do |lat, lng|
  ACCEPTED_OFFSET = 0.2
  center_lat = page.evaluate_script('map.getCenter().lat()')
  center_long = page.evaluate_script('map.getCenter().lng()')
  expect(center_lat).to be_within(ACCEPTED_OFFSET).of(lat.to_f)
  expect(center_long).to be_within(ACCEPTED_OFFSET).of(lng.to_f)
end

Then(/^spur on the map should be close to me at approximately "([^"]*)" lat and "([^"]*)" long$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^Yin Yang on the map should be close to me at approximately "([^"]*)" lat and "([^"]*)" long$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^Steers on the map should be close to me at approximately "([^"]*)" lat and "([^"]*)" long$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end
