FactoryGirl.define do
  factory :restaurant do
    name "MyString"
    address "MyString"
    phone "MyString"
    email "MyString"
    description "MyString"
    rest_category
    user
  end
end
