FactoryGirl.define do
  factory :restaurant do
    name "MyString"
    address "MyString"
    phone "MyString"
    email "MyString"
    city  "MyString"
    state "MyString"
    country "MyString"
    latitude  "Float"
    longitude "Float"
    description "MyString"
    rest_category
    user
  end
end
