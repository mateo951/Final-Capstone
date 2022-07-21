# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!(name: "Hemerson", admin: true)
User.create!(name: "Mateo", admin: true)
User.create!(name: "Jason", admin: false)

Room.create!(name: "Casa Blanca", image_url: 'https://cdn.pixabay.com/photo/2020/01/15/18/02/room-4768553__480.jpg', price: 300, description: 'The best place for your peace and quiet.', surface: 12)
Room.create!(name: "Ibex Hill", image_url: 'https://cdn.pixabay.com/photo/2020/10/18/09/16/bedroom-5664221__480.jpg', price: 380, description: 'The best place for your peace and quiet.', surface: 18)
Room.create!(name: "KingsLand", image_url: 'https://cdn.pixabay.com/photo/2020/01/15/18/01/room-4768551__480.jpg', price: 260, description: 'The best place for your peace and quiet.', surface: 35)
Room.create!(name: "Twin Palm", image_url: 'https://cdn.pixabay.com/photo/2020/10/18/09/16/bedroom-5664222__480.jpg', price: 760, description: 'The best place for your peace and quiet.', surface: 15)
Room.create!(name: "Niagara", image_url: 'https://cdn.pixabay.com/photo/2020/01/23/02/42/bedroom-4786791__480.jpg', price: 410, description: 'The best place for your peace and quiet.', surface: 13)

Reservation.create!(startDate: Date.today, endDate: Date.today, amount: 380, room_id: 2, user_id: 1)
Reservation.create!(startDate: Date.today, endDate: Date.today, amount: 380, room_id: 3, user_id: 3)