# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(first_name: "Elbin", last_name: "Keep", username: "Elbincodes", password: "123456789", email: "elbin@flatironschool.com", phone_number: "(123)456-7890")
User.create(first_name: "Kenneth", last_name: "Jiang", username: "Kennethcodes", password: "123456789", email: "kenneth@flatironschool.com", phone_number: "(098)456-7890")

Favorite.create(user_id: 1, restaurant_id: 1)
Favorite.create(user_id: 2, restaurant_id: 2)

Comment.create(restaurant_id: 1, user_id: 1, content: "This is some content.")
Comment.create(restaurant_id: 2, user_id: 2, content: "This is also some content.")

Restaurant.create(name: "Chipotle", address: "Across the street", rating: 4.2, img_url: "https://drpma142ptgxf.cloudfront.net/assets/logo.svg", longitude: 32.23123123913, latitude: 83.34234242)
Restaurant.create(name: "Shake Shack", address: "Somewhere", rating: 5.0, img_url: "www.shakeshack.com", longitude: 75.23123123913, latitude: 43.34234242)
