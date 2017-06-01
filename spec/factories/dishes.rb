FactoryGirl.define do
  factory :dish do
    name "MyString"
    description "MyString"
    price 10
    association :menu
  end
end
