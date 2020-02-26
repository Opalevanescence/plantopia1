require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy_all


puts '-------Creating Users-------'
puts '------Creating Plants-------'
5.times do
  user = User.create!(username: Faker::Name.name_with_middle, email: Faker::Internet.email, password: 'secret')
  5.times do
    Plant.create!(name: Faker::Food.ingredient,
                  # picture: 'https://source.unsplash.com/random',
                  category: ['tree', 'flower', 'bush', 'cactus'].sample,
                  price: (5..50).to_a.sample,
                  description: Faker::Hipster.paragraph,
                  user_id: user.id)
  end
end

puts '----Creating Transaction----'
Transaction.create!(
  user_id: (1..5).to_a.sample,
  plant_id: (1..10).to_a.sample)
