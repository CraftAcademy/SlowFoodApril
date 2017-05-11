
Given(/^my restaurant is created with the address, city, state and country$/) do |table|
  table.hashes.each do |hash|
    @myrestaurant = Restaurant.create(hash)
  end
end



Then(/^I expect my geo location to be "([^"]*)" lat and "([^"]*)" long$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end


# Then(/^the center of the map should be approximately "([^"]*)" lat and "([^"]*)" lng$/) do |lat, lng|
#   ACCEPTED_OFFSET = 0.2
#   center_lat = page.evaluate_script('map.getCenter().lat();')
#   center_lng = page.evaluate_script('map.getCenter().lng();')
#   expect(center_lat).to be_within(ACCEPTED_OFFSET).of(lat.to_f)
#   expect(center_lng).to be_within(ACCEPTED_OFFSET).of(lng.to_f)
# end
