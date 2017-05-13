Given(/^I click on link "([^"]*)"$/) do |link|
  click_link link
end

Then(/^I should be on the "([^"]*)" page$/) do |page_path|
  expect(page).to have_current_path page_path
end

Then(/^I should see link "([^"]*)"$/) do |link|
  expect(page).to have_link link
end

Given(/^I choose "([^"]*)" from drop\-down "([^"]*)"$/) do |value, dropdown|
  select(value, from: dropdown)
end

Then(/^I should not see "([^"]*)"$/) do |content|
  expect(page).not_to have_content content
end
