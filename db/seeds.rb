# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

FlatEquipment.destroy_all
Booking.destroy_all
Flat.destroy_all
User.destroy_all
Equipment.destroy_all
puts "Deleting all"




puts "Creating equipments list"

equipment_list = ['Stargate', 'Millennium Falcon parking', 'Gamma Washing-Dryer', 'Plasma Pool', 'Adjustable Gravity Gym']

equipment_list.each do |equipment_name|
  Equipment.create(name: equipment_name)
end

puts "Equipments list created"


users = User.create!([
  {
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
  }
])

puts "Created #{User.count} users"

puts "Creating flats"

flat1 = Flat.create!(
  number_of_guests: 4,
  price: 245,
  owner: users[0],
  name: "Mars Rooftop",
  planet: "Mars",
  description: "Welcome to the futuristic haven of Mars Rooftop, where your dreams of an otherworldly living experience come to life. Perched high above the red Martian landscape, this exquisite flat offers unparalleled views of the breathtaking cosmic horizon. Immerse yourself in a world of technological marvels and advanced comforts, designed to cater to your every desire. The sleek and minimalist interior is adorned with cutting-edge holographic displays, seamlessly merging the realms of art and innovation. Indulge in the ultimate escape from reality as you unwind in the zero-gravity relaxation pods or gaze upon the distant stars from the state-of-the-art observatory. Mars Rooftop: where tomorrow meets today.",
  equipments: Equipment.where(name: ['Stargate', 'Millennium Falcon parking'])
)

flat1.images.attach(io: File.open(Rails.root.join('app/assets/images/flat1.png')), filename: 'flat1.png')

flat2 = Flat.create!(
  number_of_guests: 6,
  price: 658,
  owner: users[1],
  name: "Venus Bay Estate",
  planet: "Venus",
  description: "The Venus Bay Estate is nestled in a peaceful corner of space, offering a luxurious getaway for space adventure enthusiasts. This unique property is located on the planet Venus, where you will be enchanted by the extraterrestrial landscapes and breathtaking views of the interstellar horizon.
  Upon arrival at this exclusive residence, you will be greeted by futuristic architecture and an elegant facade. The house stands majestically on a spacious plot, surrounded by an exotic garden that seems to come straight out of an extraterrestrial dream.
  As you enter the house, you will immediately be struck by the contemporary design and high-tech features that blend perfectly with the space environment. The solar glass transparent walls will allow you to enjoy abundant natural light while admiring the cosmic beauty of Venus.
  This exceptional house offers generous living space with open and airy areas. The main living room features sleek lines, elegant furniture, and a futuristic fireplace that creates a warm and cozy atmosphere. High ceilings and panoramic windows maximize the view of the starry sky.",
  equipments: Equipment.where(name: ['Gamma Washing / Dryer', 'Plasma Pool'])
)

flat2.images.attach(io: File.open(Rails.root.join('app/assets/images/flat2.png')), filename: 'flat2.png')

flat3 = Flat.create!(
  number_of_guests: 2,
  price: 190,
  owner: users[2],
  name: "Cocoon on the moon",
  planet: "Moon",
  description: "Welcome to the Lunar Heights! Step into a captivating future where lunar living meets earthly comforts. This stunning flat rental on the Moon promises an otherworldly experience like no other.
  Perched on the lunar surface, this state-of-the-art flat boasts panoramic windows, allowing you to gaze upon the breathtaking expanse of space. Witness Earthrise and Earthset in a spectacular dance of celestial beauty. Immerse yourself in the surreal tranquility as you drift weightlessly through each room, with a gravity generator providing the perfect balance between the moon's gentle pull and terrestrial ease.
  Designed with futuristic elegance, the interior of this lunar haven is a fusion of minimalist chic and cosmic allure. Experience the luxury of a fully equipped zero-gravity relaxation chamber, where stress dissipates, and rejuvenation takes flight. The lunar balcony beckons, offering an unobstructed view of the Moon's craters, providing an ideal setting for stargazing so close, you could almost touch the constellations.",
  equipments: [Equipment.find_by(name: 'Adjustable Gravity Gym')]
)

flat3.images.attach(io: File.open(Rails.root.join('app/assets/images/flat3.png')), filename: 'flat3.png')

flat4 = Flat.create!(
  number_of_guests: 3,
  price: 320,
  owner: users[2],
  name: "Nest with view",
  planet: "Pluton",
  description: "Step into the futuristic embrace of the Pluton Flat with View, a pinnacle of modern living amidst the celestial beauty of the cosmos. Nestled within a gleaming metropolis on a distant extraterrestrial colony, this immaculate abode offers an unparalleled experience for discerning space-traveling tenants. Boasting floor-to-ceiling windows that unveil awe-inspiring vistas of the enigmatic Pluto, prepare to be mesmerized by the ethereal dance of distant stars. This sleek sanctuary features state-of-the-art amenities, smart home integration, and a seamless blend of minimalist design and cosmic elegance. Embark on an otherworldly living adventure in the Pluton Flat with View, where the boundaries of reality and imagination converge.",
  equipments: Equipment.where(name: ['Stargate', 'Millennium Falcon parking', 'Adjustable Gravity Gym'])
)

flat4.images.attach(io: File.open(Rails.root.join('app/assets/images/flat4.jpg')), filename: 'flat4.jpg')

flat5 = Flat.create!(
  number_of_guests: 8,
  price: 570,
  owner: users[0],
  name: "Ring Dream",
  planet: "Saturn",
  description: "Welcome to the extraordinary world of Saturn Ring, where cosmic elegance meets celestial living. Nestled within the ethereal beauty of Saturn's iconic rings, this futuristic dwelling transports you to a realm beyond imagination.
  Step into a sanctuary where gravity-defying architecture seamlessly blends with futuristic technology. The minimalist design of the flat creates a sense of tranquility, accentuated by panoramic views of the glistening rings stretching across the vast expanse of space.

  Equipped with advanced holographic interfaces, the Flat on Saturn Ring offers a seamless fusion of convenience and innovation. Immerse yourself in virtual environments or unwind in the zero-gravity relaxation pod, allowing your mind to wander amidst the stars.

  Indulge in celestial cuisine as you utilize the molecular gastronomy kitchen or sip on cosmic cocktails while overlooking the magnificent spectacle of Saturn's radiant colors. And when it's time to rest, retire to the luxuriously furnished bedroom where you can gaze at Saturn's majestic presence through a transparent dome ceiling.

  Experience the pinnacle of extraterrestrial living with Saturn Ring – a place where dreams take flight among the celestial wonders of the cosmos.",
  equipments: Equipment.where(name: ['Stargate', 'Millennium Falcon parking', 'Adjustable Gravity Gym'])
)

flat5.images.attach(io: File.open(Rails.root.join('app/assets/images/flat5.jpg')), filename: 'flat5.jpg')
puts "Created flats"

puts "Creating bookings"
Booking.create!([
  {
    arrival_date: DateTime.new(2023,9,1,17),
    departure_date: DateTime.new(2023,9,4,17),
    user: users[4],
    flat: flat1
  },
  {
    arrival_date: DateTime.new(2023,5,7,17),
    departure_date: DateTime.new(2023,5,16,17),
    user: users[3],
    flat: flat2
  },
  {
    arrival_date: DateTime.new(2023,3,8,17),
    departure_date: DateTime.new(2023,3,18,17),
    user: users[3],
    flat: flat3
  }
])
puts "Created #{Booking.count} bookings"
