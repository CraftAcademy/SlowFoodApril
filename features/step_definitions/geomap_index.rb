Then(/^I have google map loaded on the page$/) do
  page.evaluate_script('$.active')
  expect(page).to have_css '#map .gm-style'
end
