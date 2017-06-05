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

Then(/^Show page$/) do
  save_and_open_page
end

Given(/^I fill in field "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in field, with: value
end

Given(/^I click on button "([^"]*)"$/) do |button_name|
  click_button button_name
end

Given(/^"([^"]*)" exists and has 2 restaurants belonging to 2 restaurant categories$/) do |user_email|
  steps %{
    Given the following restaurant categories exist
      | name      |
      | Sushi     |
      | Fast food |

    And the following users exist:
      | email           | password | password_confirmation |restaurant_owner  |
      | #{user_email}   | 12345678 | 12345678              |true              |

    And the following restaurants exist
      | name                | address           | email               | phone         | rest_category | description             | owner           |
      | Goteborg Wok Sushi  | Östrahamngatan 5  | goteborgwok@live.se | 031-13 51 52  | Sushi         | Greatest sushi in town! | #{user_email}   |
      | McDonalds           | Big Mac Drive     | mickeyd@mcd.com     | 770-555-1231  | Fast food     |                         | #{user_email}   |
  }
end
