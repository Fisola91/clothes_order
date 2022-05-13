# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#file = https://www.istockphoto.com/photo/t-shirt-isolated-on-white-background-gm177412921-21296638
Product.create!(name: "Blue T-shirt", description: "Blank blue wrinkled t-shirt mockup", price: 6.99)

# file = https://www.istockphoto.com/photo/red-v-neck-shirt-design-template-gm1170500527-323921717
Product.create!(name: "Red T-shirt", description: "Red v-neck t-shirt mock up", price: 6.99)

#file = https://www.istockphoto.com/photo/blank-white-wrinkled-t-shirt-mockup-front-view-gm1307224792-397560626
Product.create!(name: "Blank T-shirt", description: "Blank white wrinkled t-shirt mockup", price: 6.99)
