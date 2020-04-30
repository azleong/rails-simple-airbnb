puts "cleaning"
Flat.destroy_all
puts "Its empty at the moment"
9.times do 
puts "adding flats"
  flat = Flat.create(
  name: Faker::Address.city,
  address: Faker::Address.street_address,
  description: Faker::TvShows::Simpsons.quote,
  price_per_night: rand(100.1000),
  number_of_guests: rand(1..8)
)
end
puts "it's done now"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
