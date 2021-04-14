# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require "open-uri"
require "faker"

puts "Running seed..."
puts "Destorying tables..."

Product.destroy_all
Category.destroy_all

product_name1 = "Soap"
product_name2 = "Shampoo"

product_name_arr = [product_name1, product_name2]

category1 = "Skincare"

category_arr = [category1]

puts "Creating products...."

2.times do |product|
     product = Product.new(
         name: Faker::Commerce.product_name,
         description: "Nice description" || "Not a good description",
         price: rand(1..10)
     )
     product.save!
end


