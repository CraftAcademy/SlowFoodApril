Given(/^the following restaurant categories exist$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:rest_category, hash)
  end
end

Given(/^I click on "([^"]*)"$/) do |button_name|
  click_button(button_name)
end
