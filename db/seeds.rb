
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(first_name: "Bob", last_name: "Ingles", password: "password", email: "bob@bob.com", company: "Ingles grocery store", location_id: location1.id, description: "Ingles manager")
user2 = User.create(first_name: "Harris", last_name: "Teeter", password: "password", email: "ht@ht.com", company: "Harris Teeter", location_id: location2.id, description: "Harris Teeter manager")
user3 = User.create(first_name: "Jane", last_name: "Doe", password: "password", email: "jane@jane.com", company: "UNC Office of Sustainability", location_id: location3.id, description: "Head of department")
user4 = User.create(first_name: "Patti", last_name: "Mayo", password: "password", email: "patti@patti.com", company: "Durham Foodbank", location_id: location4.id, description: "Director")
user5 = User.create(first_name: "Susie", last_name: "Q", password: "password", email: "susie@susie.com", company: "Whimsical Weddings Catering", description: "Owner")


location1 = Location.create(address_1: "123 Main Street", city: "Asheville", state: "NC", zip_code: "28806", nickname: "Ingles")
location2 = Location.create(address_1: "123 Durham Ave", city: "Durham", state: "NC", zip_code: "27701", nickname: "Harris Teeter")
location3 = Location.create(address_1: "1 University Drive", address_2: "Suite A", city: "Chapel Hill", state: "NC", zip_code: "27514", nickname: "UNC")
location4 = Location.create(address_1: "111 Chapel Hill BLVD", address_2: "Unit 3", city: "Durham", state: "NC", zip_code: "27701", nickname: "Foodbank branch 1")
location5 = Location.create(address_1: "222 Fayetteville St", address_2: "Suite 100", city: "Durham", state: "NC", zip_code: "27707", nickname: "Foodbank branch 2")
location6 = Location.create(address_1: "333 Venue Avenue", city: "Durham", state: "NC", zip_code: "27701", nickname: "Wedding venue")


post1 = Post.create(title: "Canned goods", details: "300 cans of beans", start_at: "2013-11-22 2:25PM", end_at: "2013-11-29 2:25PM", supplier_id: user1.id, location_id: location1.id)
post2 = Post.create(title: "Fresh produce", details: "12 lbs of arugula", start_at: "2014-10-12 12:25PM", end_at: "2014-10-13 2:25PM", supplier_id: user2.id, location_id: location2.id)
post3 = Post.create(title: "Catering leftovers", details: "3 trays of mashed potatoes and 2 trays of brisket", start_at: "2015-3-12 2:25PM", end_at: "2015-3-12 3:25PM", supplier_id: user5.id, location_id: location6.id)
post4 = Post.create(title: "Misc. grocieries", details: "18 boxes of spaghetti", start_at: "2016-5-12 1:25PM", end_at: "2016-6-12 9:25PM", supplier_id: user1.id, location_id: location1.id)

exchange1 = Exchange.create(claimant_id: user3.id, post_id: post1.id, completed: true)
exchange2 = Exchange.create(claimant_id: user4.id, post_id: post2.id, completed: true)
exchange3 = Exchange.create(claimant_id: user4.id, post_id: post3.id, completed: true)

message1 = Message.create(exchange_id: exchange1.id, body: "Can you tell me what kind of beans are being offered?")
message2 = Message.create(exchange_id: exchange1.id, body: "Lima beans all the way.")
message3 = Message.create(exchange_id: exchange1.id, body: "Great, thanks!")
message4 = Message.create(exchange_id: exchange3.id, body: "I'm on my way but I'm running 5 minutes late!")
message5 = Message.create(exchange_id: exchange3.id, body: "No worries - take your time!")

review1 = Rating.create(rating: 4, reviewer_id: user3.id, reviewed_id: user1.id)
review2 = Rating.create(rating: 5, reviewer_id: user1.id, reviewed_id: user3.id)
review3 = Rating.create(rating: 3, reviewer_id: user4.id, reviewed_id: user2.id)
review4 = Rating.create(rating: 5, reviewer_id: user2.id, reviewed_id: user4.id)
review5 = Rating.create(rating: 2, reviewer_id: user4.id, reviewed_id: user5.id)
review6 = Rating.create(rating: 5, reviewer_id: uesr5.id, reviewed_id: user4.id)

User.create!(first_name: "Sue", last_name: "Smith", email: "sue@gmail.com", password_digest: BCrypt::Password.create("monkey"))
