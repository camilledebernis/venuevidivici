# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
User.destroy_all
Venue.destroy_all
Booking.destroy_all

puts 'Creating users...'
me = User.create(name: "Danielle", email: "me@me.com", password: "123456")
you =  User.create(name: "Nooneknows", email: "you@you.com", password: "123456")
ana = User.create(name: "Ana", email: "ana@gmail.com", password: "anameme")
bob = User.create(name: "Bob", email: "bob@yahoo.com", password: "booob123")
cal = User.create(name: "Calvin", email: "calvin@gmail.com", password: "calvinAndHobbes")


puts 'Creating venues...'
Venue.create(title: 'Huge Place!', description: 'Amazing venue near Eiffel Tower',
  imgurl: "https://res.cloudinary.com/danielcastro/image/upload/v1574955120/VVVenue%20Venues/big_open_area.jpg",
  address: '23 Place de la Madeleine', price: 800, user_id: cal.id)

Venue.create(title: 'Small but cozy', description: 'Elegant and intimate!',
  imgurl: "https://res.cloudinary.com/danielcastro/image/upload/v1574954968/VVVenue%20Venues/triplex.jpg",
  address: '54 Faubourg Saint Honoré', price: 300, user_id: cal.id)

Venue.create(title: 'Bar', description: 'Nice bar for your party.',
  imgurl: "https://res.cloudinary.com/danielcastro/image/upload/v1574954968/VVVenue%20Venues/nice_bar_for_your_party.jpg",
  address: '59 rue La Boétie', price: 350, user_id: you.id)

Venue.create(title: 'Stadium', description: 'Organize your match here!',
  imgurl: "https://res.cloudinary.com/danielcastro/image/upload/v1574954968/VVVenue%20Venues/open_field.jpg",
  address: '93200 Saint-Denis', price: 1500, user_id: bob.id)

Venue.create(title: 'Big open area', description: 'Outdoors partying',
  imgurl: "https://res.cloudinary.com/danielcastro/image/upload/v1574955120/VVVenue%20Venues/big_open_area.jpg",
  address: '79 place de Miremont', price: 700, user_id: bob.id)

Venue.create(title: 'Club', description: 'With pools and sports fields!',
  imgurl: "https://res.cloudinary.com/danielcastro/image/upload/v1574954968/VVVenue%20Venues/club_with_pool_and_sport_field.jpg",
  address: '30 rue Nationale', price: 950, user_id: ana.id)

Venue.create(title: 'Dance Club', description: 'Great for dubstep parties',
  imgurl: "https://res.cloudinary.com/danielcastro/image/upload/v1574954968/VVVenue%20Venues/club.jpg",
  address: '92 Square de la Couronne', price: 750, user_id: bob.id)

Venue.create(title: 'Triplex', description: 'Big apartment with great dependencies',
  imgurl: "https://res.cloudinary.com/danielcastro/image/upload/v1574954968/VVVenue%20Venues/triplex.jpg",
  address: '1259 James Avenue', price: 450, user_id: you.id)

Venue.create(title: 'Open field', description: 'Great for festivals!',
  imgurl: "https://res.cloudinary.com/danielcastro/image/upload/v1574954968/VVVenue%20Venues/open_field.jpg",
  address: '3629 Fantages Way', price: 800, user_id: ana.id)

Venue.create(title: 'Backyard', description: '10 people max',
  imgurl: "https://res.cloudinary.com/danielcastro/image/upload/v1574954967/VVVenue%20Venues/backyard.jpg",
  address: '836 Nash Street', price: 150, user_id: ana.id)


puts 'DONE'
