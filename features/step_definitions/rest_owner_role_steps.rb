Given(/^the following restaurant owner credentials exist$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:user, hash)
  end
end
