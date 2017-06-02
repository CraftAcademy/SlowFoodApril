# Given(/^there are dishes in my cart$/) do
#   steps %{
#     Given "benji@teabags.com" exists and has 2 restaurants belonging to 2 restaurant categories
#
#     And the following menus exist
#       | name                    | restaurant          |
#       | Sushi Menu              | Goteborg Wok Sushi  |
#       | Burgers                 | McDonalds           |
#       | Breakfast menu          | McDonalds           |
#       | Sushi Menu              | McDonalds           |
#
#     And the following dishes exist
#       | name                    | description                             | price      | menu                      | restaurant           |
#       | 7 piece sushi           | Salmon and avocado sushi pieces         | 10         | Sushi Menu                | Goteborg Wok Sushi   |
#       | Giant Burger            | A burger with cheese and lettuce        | 150        | Burgers                   | McDonalds            |
#       | Quarter Pounder Cheese  | A burger with too much cheese           | 2000       | Burgers                   | McDonalds            |
#       | Coffe                   | Not from Colombia                       | 2500       | Sushi Menu                | McDonalds            |
#
#     Scenario: Adding dish to cart
#     Given I visit the landing page
#     And I click on link "McDonalds"
#     And I click on link "Full menu"
#     And I click on link "Add Giant Burger to cart"
#     And I click on link "Add Coffe to cart"
#   }
# end
