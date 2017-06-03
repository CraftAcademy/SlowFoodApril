# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




users= User.create([{ email: 'owner@b.com',
                      password: '12345678',
                      password_confirmation: '12345678',
                      username: 'owner',
                      first_name: 'Owner',
                      last_name: 'User',
                      address: '111 Other St',
                      phone_number: '770-555-1234',
                      restaurant_owner: true },
                    { email: 'admin@b.com',
                      password: '12345678',
                      password_confirmation: '12345678',
                      username: 'admin',
                      first_name: 'Admin',
                      last_name: 'User',
                      address: '222 Other St',
                      phone_number: '770-555-1234',
                      admin: true },
                    { email: 'user@b.com',
                      password: '12345678',
                      password_confirmation: '12345678',
                      username: 'user',
                      first_name: 'User',
                      last_name: 'User',
                      address: '333 Other St',
                      phone_number: '770-555-1234'}])
rest_cats = RestCategory.create([{ name: 'Sushi' }, { name: 'Fast food' }])
restaurants = Restaurant.create([{ name: 'Backyard burger',
                                   address: '123 Main St',
                                   city: 'Dallas', province: 'Texas',
                                   country: 'USA',
                                   phone: '123-456-7890',
                                   email: 'bburger@dallas.com',
                                   description: 'We have been in business since 2000',
                                   latitude: 32.783585,
                                   longitude: -96.805077,
                                   rest_category: rest_cats.last,
                                   user: users.first },
                                 { name: 'Sushi Palace',
                                   address: '123 Storgatan',
                                   city: 'Stockholm', province: 'Stockholm',
                                   country: 'Sweden',
                                   phone: '08-123456',
                                   email: 'shushi@stockholm.se',
                                   description: 'We know how to make great sushi',
                                   latitude: 59.334591,
                                   longitude: 18.063240,
                                   rest_category: rest_cats.first,
                                   user: users.first },
                                 { name: 'Cool Food',
                                   address: '321 Main St',
                                   city: 'Pretoria', province: 'Gauteng',
                                   country: 'South Africa',
                                   phone: '0132441511',
                                   email: 'cfood@pretoria.co.za',
                                   description: 'For a hot place we got cool food!',
                                   latitude: -25.731340,
                                   longitude: 28.218370,
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
