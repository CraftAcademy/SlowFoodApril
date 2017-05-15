Given(/^the following restaurants exists$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:restaurant, hash)
  end
end


Then(/^my position on the map should be approximately "([^"]*)" lat and "([^"]*)" long$/) do |lat, lng|
  ACCEPTED_OFFSET = 0.2
  center_lat = page.evaluate_script('map.getCenter().lat()')
  center_long = page.evaluate_script('map.getCenter().lng()')
  expect(center_lat).to be_within(ACCEPTED_OFFSET).of(lat.to_f)
  expect(center_long).to be_within(ACCEPTED_OFFSET).of(lng.to_f)
end


Then(/^I expect to see a google map marker$/) do
  sleep(0.1) until page.evaluate_script('$.active') == 0
  expect(page).to have_css 'div.overlay'
end


Given(/^my location is set to "([^"]*)" lat and "([^"]*)" long$/) do |arg1, arg2|

end
