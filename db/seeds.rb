# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

airports = []

airports[0] = Airport.create(code: "PHX", name:"Sky Harbor", location:"Phoenix")
airports[1] = Airport.create(code: "LA", name:"Long Beach Airport", location:"Los Angeles")
airports[2] = Airport.create(code: "MIA", name:"Miami Airlines", location: "Miami")



flights = Flight.create([{departure_airport_id: airports.first.id, arrival_airport_id: airports.last.id, duration: 400, scheduled_on: "2022-12-25 07:00:00"},
{departure_airport_id: airports.first.id, arrival_airport_id: airports.last.id, duration: 430, scheduled_on: "2022-12-26 08:00:00"},
{departure_airport_id: airports.first.id, arrival_airport_id: airports.last.id, duration: 405, scheduled_on: "2022-12-27 09:00:00"} ])