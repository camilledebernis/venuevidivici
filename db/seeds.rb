# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Danielle", email: "me@me.com", password: "123456")
User.create(name: "Nooneknows", email: "you@you.com", password: "123456")


Venue.create(title: 'Apt 1', description: 'amazing apartment near Eiffel Tower', price: 80, user_id: 1)
Venue.create(title: 'Apt 2', description: 'awful flat with cockroaches in saint denis', price: 30, user_id: 1)
Venue.create(title: 'Bar', description: 'nice bar in Le Marais', price: 150, user_id: 2)
Venue.create(title: 'Stadium', description: 'Maracana, what else', price: 800, user_id: 2)
