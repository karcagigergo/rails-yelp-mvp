# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurant_type = ["chinese", "italian", "japanese", "french", "belgian"]
restaurants = [
  { name: 'Escovinha\'s',
    address: 'St Ambrose Croft',
  phone_number: Faker::PhoneNumber.cell_phone.to_s, category: restaurant_type.sample },

  { name: 'Jorge\'s No T-shirt Bakery',
    address: 'Pope\'s Avenue',
  phone_number: Faker::PhoneNumber.cell_phone.to_s, category: restaurant_type.sample },

  { name: 'Rachel\'s Deutsches Restaurant',
    address: 'Shadwell Park Grove',
  phone_number: Faker::PhoneNumber.cell_phone.to_s, category: restaurant_type.sample },

  { name: 'CO\'s Brunch',
    address: 'Pool Darkin Lane',
  phone_number: Faker::PhoneNumber.cell_phone.to_s, category: restaurant_type.sample },

  { name: 'Capy\'s Lunch',
    address: 'Staddon Gardens',
  phone_number: Faker::PhoneNumber.cell_phone.to_s, category: restaurant_type.sample },

  { name: 'Fé Lunch',
    address: 'Saint Brides Close',
  phone_number: Faker::PhoneNumber.cell_phone.to_s, category: restaurant_type.sample },

  { name: 'Slack\'s Hero Coffee Shop',
    address: 'Swanwick Gardens',
  phone_number: Faker::PhoneNumber.cell_phone.to_s, category: restaurant_type.sample },

  { name: 'Baby Room Coffee Shop',
    address: 'Fairhurst Way',
  phone_number: Faker::PhoneNumber.cell_phone.to_s, category: restaurant_type.sample },

  { name: 'Upside Down Desserts',
    address: 'Jamaica Circle',
  phone_number: Faker::PhoneNumber.cell_phone.to_s, category: restaurant_type.sample }
]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'