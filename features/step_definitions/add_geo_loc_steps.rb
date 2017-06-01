
Given(/^my restaurant is created with the address, city, state and country$/) do |table|
  table.hashes.each do |hash|
    create(:restaurant, hash)
  end
end


Then(/^location for "([^"]*)" should be "([^"]*)" lat and "([^"]*)" long$/) do |rest_name, lat, long|
  rest = Restaurant.find_by(name: rest_name)
  expect(rest.latitude).to eq lat.to_f
  expect(rest.longitude).to eq long.to_f
end
