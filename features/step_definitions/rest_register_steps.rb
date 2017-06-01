Then(/^I should see "([^"]*)" link$/) do |link|
  expect(page).to have_link link
end

Then(/^I click on the "([^"]*)" link$/) do |link|
  click_link(link)
end

Given(/^I am logged in with "([^"]*)", password '(\d+)' and password_confirmation '(\d+)'$/) do |email, pwd, pwd_confirm|
  user = FactoryGirl.create(:user, email: email, password: pwd, password_confirmation: pwd_confirm )
  login_as(user, scope: :user)
  visit root_path
end
