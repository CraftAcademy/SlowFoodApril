Then(/^I have google map loaded on the page$/) do
  sleep(0.2) until page.evaluate_script('$.active') == 0
  expect(page).to have_css '#map .gm-style'
  #page.driver.debug

end
