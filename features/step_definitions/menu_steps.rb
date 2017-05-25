Given(/^the following menus exist$/) do |table|
  table.hashes.each do |hash|
    hash["restaurant"] = Restaurant.find_by(name: hash["restaurant"])
    FactoryGirl.create(:menu, hash)
  end
end
