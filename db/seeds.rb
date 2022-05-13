require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

file_1 = URI.open("https://res.cloudinary.com/dolkzfrxl/image/upload/v1652434632/vswwaqnrx7vjvqpahczp.jpg")
blue = Product.create!(name: "Blue T-shirt", description: "Blank blue wrinkled t-shirt mockup", price: 6.99)
blue.photo.attach(io: file_1, filename: "cloth_1", content_type: 'image/jpg')

file_2 = URI.open("https://res.cloudinary.com/dolkzfrxl/image/upload/v1652434672/cxtvlkn1xsmj2rfzlcfe.jpg")
red = Product.create!(name: "Red T-shirt", description: "Red v-neck t-shirt mock up", price: 6.99)
red.photo.attach(io: file_2, filename: "cloth_2", content_type: 'image/jpg')

file_3 = URI.open("https://res.cloudinary.com/dolkzfrxl/image/upload/v1652434680/r69felb7zx6ofjbj4r1s.jpg")
white = Product.create!(name: "Blank T-shirt", description: "Blank white wrinkled t-shirt mockup", price: 6.99)
white.photo.attach(io: file_3, filename: "cloth_3", content_type: 'image/jpg')
