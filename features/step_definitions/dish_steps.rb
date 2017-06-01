Given(/^the following dishes exist$/) do |table|
  table.hashes.each do |hash|
    rest = Restaurant.find_by(name: hash["restaurant"])
    hash["menu"] = Menu.where(name: hash["menu"], restaurant_id: rest.id).first
    hash["price"] = hash["price"].to_i
    hash.delete("restaurant")
    FactoryGirl.create(:dish, hash)
  end
end
