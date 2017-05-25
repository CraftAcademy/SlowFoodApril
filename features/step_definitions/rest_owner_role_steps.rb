Given(/^the following restaurant owner credentials exist$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:user, hash)
  end
end

Then(/^I visit the restaurant admin page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
