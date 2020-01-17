# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

50.times do |index|
  Product.create!(name: Faker::Food.spice,
                        cost: rand(1..100),
                        country: ['The United States','China', 'India', 'Brazil'].sample)
end

p "Created #{Product.count} products"
ids = []
Product.all.each do |product|
  ids.push(product.id)
end

Review.destroy_all

250.times do |index|
  Review.create!(author: Faker::Sports::Basketball.player,
                        content: Faker::Lorem.sentence(word_count: 25),
                        rating: rand(1..5),
                        product_id: ids.sample)
end

p "Created #{Review.count} reviews"
