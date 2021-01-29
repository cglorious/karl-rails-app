# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

breakfast = Category.create(name: "Breakfast")
lunch = Category.create(name: "Lunch")
dinner = Category.create(name: "Dinner")

karma = Business.create(name: "Karma Cafe", city: "San Francisco", state: "CA", price_range: 2, category: breakfast)
papalote = Business.create(name: "Papalote Mexican Grill", city: "San Francisco", state: "CA", price_range: 2, category: lunch)
sisig = Business.create(name: "Senor Sisig", city: "San Francisco", state: "CA", price_range: 2, category: dinner)

carolyn = Customer.create(name: "Carolyn", email: "carolyn@me.com", location: "New York, NY", password: "carolyn", admin: true)
robbie = Customer.create(name: "Robbie", email: "robbie@me.com", location: "Berkeley, CA", password: "robbie")
david = Customer.create(name: "David", email: "david@me.com", location: "Davis, CA", password: "david")
maya = Customer.create(name: "Maya", email: "maya@me.com", location: "San Francisco, CA" , password: "maya")
peyton = Customer.create(name: "Peyton", email: "peyton@me.com", location: "Honolulu, HI" , password: "maya")

karma_1 = Review.create(content: "I love this place. It's adorable, such friendly folks, and a delightful and fresh cafe menu. I love their BLT: so much bacon!!!!!!", rating: 5, customer: carolyn, business: karma)
karma_2 = Review.create(content: "Very delicious paninis and smoothies here! I like how they always make a little extra and pour the rest into a separate cup for Togo. The guy who helped me out provided great service and recommendations! I would come back if I'm in the area.", rating: 5, customer: robbie, business: karma)
papalote = Review.create(content: "Delicious burritos! Stoked to find vegan options and good options to add extras  both times we've ordered it was super quick and straightforward pickup.", rating: 5, customer: maya, business: papalote)
sisig = Review.create(content: "My go-to is their California Sisig Burrito which comes with your choice of protein,french fries, shredded cheese, sour cream, guacamole, & pico de gallo. Can't wait to get my fix in a few weeks.", rating: 5, customer: carolyn, business: sisig)
