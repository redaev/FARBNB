# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
puts "Deleting all"

User.create!([{
  first_name: "Jean",
  last_name: "Peuplu",
  telepathic_code: "123",
  specie: "Human",
  email: "jean-peuplu@mail.com",
  password: "123456789"
},
{
  first_name: "Pierre",
  last_name: "Quiroule",
  telepathic_code: "456",
  specie: "Alien",
  email: "pierre-quiroule@mail.com",
  password: "123456789"
},
{
  first_name: "Arnaud",
  last_name: "Way",
  telepathic_code: "753",
  specie: "Martien",
  email: "arnaud-way@mail.com",
  password: "123456789"
},
{
  first_name: "Paula",
  last_name: "Bella",
  telepathic_code: "159",
  specie: "Human",
  email: "paula-bella@mail.com",
  password: "123456789"
},
{
  first_name: "Paul",
  last_name: "Ochon",
  telepathic_code: "123456",
  specie: "Human",
  email: "paul-ochon@mail.com",
  password: "123456789"
}])
puts "Created #{User.count} users"

puts "Creating flats"
Flat.create!([{
  number_of_guests: 4,
  price: 245,
  owner_id: 1,
  name: "Mars Rooftop",
  planet: "Mars",
  description: "Bienvenue sur notre propriété où vous attend un chalet en bois indépendant avec terrasse privative au milieu des pins. Site privilégié à 15 min de l'astroport, au calme, propice au repos, à la méditation, à l'écriture, à la découverte de Mars (ses marchés, festivals de musique classique...)"
},
{
  number_of_guests: 6,
  price: 658,
  owner_id: 2,
  name: "Maison dans les arbres",
  planet: "Venus",
  description: "Bienvenue dans notre grande maison avec piscine, située dans le sud de Venus, à 15 minutes de la faille du pendu."
},
{
  number_of_guests: 2,
  price: 190,
  owner_id: 3,
  name: "Cocoon on the moon",
  planet: "Moon",
  description: "Situé dans un petit village à 10 mins des plages de Moon-sur-mer. Sur un terrain paysager et forestier de 1,2 ha."
}])
puts "Created #{Flat.count} flats"

puts "Creating bookings"
Booking.create!([{
  arrival_date: DateTime.new(2023,9,1,17),
  departure_date: DateTime.new(2023,9,4,17),
  user_id: 5,
  flat_id: 1
},
{
  arrival_date: DateTime.new(2023,5,7,17),
  departure_date: DateTime.new(2023,5,16,17),
  user_id: 4,
  flat_id: 2
},
{
  arrival_date: DateTime.new(2023,3,8,17),
  departure_date: DateTime.new(2023,3,18,17),
  user_id: 4,
  flat_id: 3
}])
puts "Created #{Booking.count} bookings"
