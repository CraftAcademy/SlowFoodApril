FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password "password"
    password_confirmation "password"
    username "testuser"
    first_name "Joe"
    last_name "Doe"
    address "123 Main Street"
    phone_number "404-555-1234"
    admin false
    restaurant_owner false 
  end
end
