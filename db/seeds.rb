# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
location1 = Locaion.create!(address1: "1 Main St")
location2 = Location.create!(address2: "20 Elm St")

user1 = User.create!(first_name: "Sam", last_name: "Smith", password: "monkey", email: "sam@gmail.com", location_id: location1.id)
user2 = User.create!(first_name: "Janice", last_name: "Jones", password: "monkey", email: "janice@gmail.com", location_id: location2.id)
