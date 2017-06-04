# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




users= User.create([{ email: 'abc@b.com',
                      password: '12345678',
                      password_confirmation: '12345678',
                      username: 'abc',
                      first_name: 'Big',
                      last_name: 'Ben',
                      address: '123 Other St',
                      phone_number: '770-555-1234' }])
rest_cats = RestCategory.create([{ name: 'Sushi' }, { name: 'Fast food' }])
restaurants = Restaurant.create([{ name: 'Backyard burger',
                                   address: '123 Main St',
                                   city: 'Dallas', province: 'Texas',
                                   country: 'USA',
                                   rest_category: rest_cats.last,
                                   user: users.first },
                                 { name: 'Sushi Palace',
                                   address: '123 Storgatan',
                                   city: 'Stockholm', province: 'Stockholm',
                                   country: 'Sweden',
                                   rest_category: rest_cats.first,
                                   user: users.first },
                                 { name: 'Cool Food',
                                   address: '321 Main St',
                                   city: 'Pretoria', province: 'Gauteng',
                                   country: 'South Africa',
                                   rest_category: rest_cats.last,
                                   user: users.first }])
menus = Menu.create([{ name: 'Breakfast', restaurant: restaurants.first },
                     { name: 'Breakfast', restaurant: restaurants.last },
                     { name: 'Sushi menu', restaurant: restaurants[1] },
                     { name: 'Dinner', restaurant: restaurants.first },
                     { name: 'Burgers', restaurant: restaurants.last }])
dishes = Dish.create([{ name: 'Bacon scramled eggs', price: 1000,
                        description: 'Great breakfast!',
                        menu: menus.first },
                      { name: 'Big burger', price: 2000,
                        description: 'Largest burger in town!',
                        menu: menus[3] },
                      { name: 'Best burger', price: 25000,
                        description: 'For the ones with finer taste',
                        menu: menus.last },
                      { name: 'My way', price: 1500,
                        description: 'The dish is served your way',
                        menu: menus.last },
                      { name: 'Hello food', price: 14000,
                        description: 'Enjoy it!',
                        menu: menus[2] },
                      { name: 'Ham sandwich', price: 1500,
                        description: 'Cool food',
                        menu: menus[1] },
                      { name: 'Cool burger', price: 10000,
                        description: 'Served with ice.',
                        menu: menus[3] }])
