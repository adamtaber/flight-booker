# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.delete_all

Airport.create!([{
  id: 1,
  airport_code: 'DFW'
},
{
  id: 2,
  airport_code: 'SFO'
},
{
  id: 3,
  airport_code: 'LAX'
}])

Flight.delete_all

Flight.create!([{
  departure_airport_id: 1,
  arrival_airport_id: 2,
  start_datetime: '2022-12-16 20:00:00 UTC',
  flight_duration: 3
},
{
  departure_airport_id: 1,
  arrival_airport_id: 2,
  start_datetime: '2022-12-16 06:00:00 UTC',
  flight_duration: 3
},
{
  departure_airport_id: 1,
  arrival_airport_id: 2,
  start_datetime: '2022-12-16 12:00:00 UTC',
  flight_duration: 3
},
{
  departure_airport_id: 2,
  arrival_airport_id: 3,
  start_datetime: '2022-12-16 20:00:00 UTC',
  flight_duration: 5
},
{
  departure_airport_id: 2,
  arrival_airport_id: 3,
  start_datetime: '2022-12-16 04:00:00 UTC',
  flight_duration: 5
},
{
  departure_airport_id: 2,
  arrival_airport_id: 3,
  start_datetime: '2022-12-16 15:00:00 UTC',
  flight_duration: 5
},
{
  departure_airport_id: 3,
  arrival_airport_id: 2,
  start_datetime: '2022-12-16 20:00:00 UTC',
  flight_duration: 8
},
{
  departure_airport_id: 3,
  arrival_airport_id: 2,
  start_datetime: '2022-12-16 13:00:00 UTC',
  flight_duration: 8
},
{
  departure_airport_id: 3,
  arrival_airport_id: 2,
  start_datetime: '2022-12-16 02:00:00 UTC',
  flight_duration: 8
}])
