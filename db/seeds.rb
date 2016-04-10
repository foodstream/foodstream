
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongitudeside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



location1 = Location.create(address_1: "123 Main Street", city: "Asheville", state: "NC", zip_code: "28806", nickname: "Ingles", latitude: "35.60614", longitude: "82.55325540000001", address_string: "200 Merrimon Ave, Asheville, NC 28801")
location2 = Location.create(address_1: "123 Durham Ave", city: "Durham", state: "NC", zip_code: "27701", nickname: "Harris Teeter", latitude: "35.99599080000001", longitude: "78.90235000000001", address_string: "300 W Main St, Durham, NC 27701, USA")
location3 = Location.create(address_1: "1 University Drive", address_2: "Suite A", city: "Chapel Hill", state: "NC", zip_code: "27514", nickname: "UNC", latitude: "35.9153588", longitude: "79.0486282", address_string: "400 E Franklin St, Chapel Hill, NC 27514, USA")
location4 = Location.create(address_1: "111 Chapel Hill BLVD", address_2: "Unit 3", city: "Durham", state: "NC", zip_code: "27701", nickname: "Foodbank branch 1", latitude: "35.99599080000001", longitude: "78.90235000000001", address_string: "300 W Main St, Durham, NC 27701, USA")
location5 = Location.create(address_1: "222 Fayetteville St", address_2: "Suite 100", city: "Durham", state: "NC", zip_code: "27707", nickname: "Foodbank branch 2", latitude: "35.99599080000001", longitude: "78.90235000000001", address_string: "300 W Main St, Durham, NC 27701, USA")
location6 = Location.create(address_1: "333 Venue Avenue", city: "Durham", state: "NC", zip_code: "27701", nickname: "Wedding venue", latitude: "35.99599080000001", longitude: "78.90235000000001", address_string: "300 W Main St, Durham, NC 27701, USA")

user1 = User.create(first_name: "Bob", last_name: "Ingles", password: "password", email: "bob@bob.com", organization: "Ingles grocery store", location_id: location1.id, description: "Ingles manager", image_link: "https://s3.amazonaws.com/foodstream/uploads/profilepic.jpeg")
user2 = User.create(first_name: "Harris", last_name: "Teeter", password: "password", email: "ht@ht.com", organization: "Harris Teeter", location_id: location2.id, description: "Harris Teeter manager")
user3 = User.create(first_name: "Jane", last_name: "Doe", password: "password", email: "jane@jane.com", organization: "UNC Office of Sustainability", location_id: location3.id, description: "Head of department")
user4 = User.create(first_name: "Patti", last_name: "Mayo", password: "password", email: "patti@patti.com", organization: "Durham Foodbank", location_id: location4.id, description: "Director")
user5 = User.create(first_name: "Susie", last_name: "Q", password: "password", email: "susie@susie.com", organization: "Whimsical Weddings Catering", description: "Owner")
user6 = User.create(first_name: "jon", last_name: "guy", password: "pass", email: "john@wsm.com", organization: "weaver street", location_id: nil, description: "produce manager @ weaver st", latitude: "35.9112313", longitude: "-79.07705220000003", address_string: "800 W Weaver St, Carrboro, NC 27510, USA")
user7 = User.create(first_name: "Steve", last_name: "Carter", password: "pass", email: "steve@weaverstreet.com", organization: "weaver street", location_id: nil, description: "produce manager", latitude: "35.8806338", longitude: "-79.06633979999998", address_string: "700 Market St, Chapel Hill, NC 27516, USA")
user8 = User.create(first_name: "Carolyn", last_name: "T", password: "pass", email: "carolyn@weaverstreet.com", organization: "weaver street", location_id: nil, description: "manager", latitude: "36.0735329", longitude: "-79.09973339999999", address_string: "228 S Churton St, Hillsborough, NC 27278, United S...")
user9 = User.create(first_name: "Joe", last_name: "person", password: "pass", email: "joe@wholefoods.com", organization: "whole foods", location_id: nil, description: "manager @ wf", latitude: "35.8025088", longitude: "-78.68632020000001", address_string: "Ridgewood Shopping Center, 3540 Wade Avenue, Ralei...")


post1 = Post.create(title: "Canned goods", details: "300 cans of beans", start_at: "2013-11-22 2:25PM", end_at: "2013-11-29 2:25PM", supplier_id: user1.id, location_id: location1.id, claimed: false, completed: false, claimant_id: nil, latitude: "35.99599080000001", longitude: "78.90235000000001", address_string: "300 W Main St, Durham, NC 27701, USA", image_link: "https://s3.amazonaws.com/foodstream/uploads/profilepic.jpeg")
post2 = Post.create(title: "Fresh produce", details: "12 lbs of arugula", start_at: "2014-10-12 12:25PM", end_at: "2014-10-13 2:25PM", supplier_id: user2.id, location_id: location2.id, claimed: false, completed: false, claimant_id: nil, latitude: "35.99599080000001", longitude: "78.90235000000001", address_string: "300 W Main St, Durham, NC 27701, USA", image_link: "https://s3.amazonaws.com/foodstream/uploads/profilepic.jpeg")
post3 = Post.create(title: "Catering leftovers", details: "3 trays of mashed potatoes and 2 trays of brisket", start_at: "2015-3-12 2:25PM", end_at: "2015-3-12 3:25PM", supplier_id: user5.id, location_id: location6.id, claimed: false, completed: true, claimant_id: 1, latitude: "35.60614", longitude: "82.55325540000001", address_string: "200 Merrimon Ave, Asheville, NC 28801")
post4 = Post.create(title: "Misc. grocieries", details: "18 boxes of spaghetti", start_at: "2016-5-12 1:25PM", end_at: "2016-6-12 9:25PM", supplier_id: user1.id, location_id: location1.id, claimed: false, completed: false, claimant_id: nil, latitude: "35.60614", longitude: "82.55325540000001", address_string: "200 Merrimon Ave, Asheville, NC 28801")
post5 = Post.create(title: "some greens and whatnot", details: "we've got a lot of kale thats tore up but would be...", start_at: "2016-10-04 12:30:00", end_at: "2016-11-04 13:00:00", supplier_id: 6, location_id: nil, created_at: "2016-04-10 16:22:43", updated_at: "2016-04-10 16:22:43", claimed: nil, completed: nil, claimant_id: nil, latitude: "35.9112313", longitude: "-79.07705220000003", address_string: "800 W Weaver St, Carrboro, NC 27510, USA")
post6 = Post.create(title: "bananas", details: "nanans", start_at: "2016-11-04 13:00:00", end_at: "2016-12-04 13:00:00", supplier_id: 6, location_id: nil, created_at: "2016-04-10 16:30:34", updated_at: "2016-04-10 16:30:34", claimed: nil, completed: nil, claimant_id: nil, latitude: "35.9112313", longitude: "-79.07705220000003", address_string: "800 W Weaver St, Carrboro, NC 27510, USA")
post7 = Post.create(title: "tomoatoes, come get 'em", details: "tomaotoes, yall forreal", start_at: "2016-11-04 16:00:00", end_at: "2016-12-04 16:00:00", supplier_id: 7, location_id: nil, created_at: "2016-04-10 16:33:09", updated_at: "2016-04-10 16:33:09", claimed: nil, completed: nil, claimant_id: nil, latitude: "35.8806338", longitude: "-79.06633979999998", address_string: "700 Market St, Chapel Hill, NC 27516, USA")
post8 = Post.create(title: "fruits'n'fruits", details: "apples, pears, etc", start_at: "2016-10-04 13:00:00", end_at: "2016-11-04 13:30:00", supplier_id: 7, location_id: nil, created_at: "2016-04-10 16:35:55", updated_at: "2016-04-10 16:35:55", claimed: nil, completed: nil, claimant_id: nil, latitude: "35.8806338", longitude: "-79.06633979999998", address_string: "700 Market St, Chapel Hill, NC 27516, USA")
post9 = Post.create(title: "potatoes", details: "scarred but good", start_at: "2016-10-04 14:00:00", end_at: "2016-11-04 17:00:00", supplier_id: 8, location_id: nil, created_at: "2016-04-10 16:38:42", updated_at: "2016-04-10 16:38:42", claimed: nil, completed: nil, claimant_id: nil, latitude: "36.0735898", longitude: "-79.0997367", address_string: "228 S Churton St, Hillsborough, NC 27278, USA")
post10 = Post.create(title: "mangoes", details: "gooey but good", start_at: "2016-10-04 13:00:00", end_at: "2016-10-04 16:00:00", supplier_id: 8, location_id: nil, created_at: "2016-04-10 16:41:06", updated_at: "2016-04-10 16:41:06", claimed: nil, completed: nil, claimant_id: nil, latitude: "36.0735898", longitude: "-79.0997367", address_string: "228 S Churton St, Hillsborough, NC 27278, USA")



message1 = Message.create(post_id: post1.id, body: "Can you tell me what kind of beans are being offered?")
message2 = Message.create(post_id: post1.id, body: "Lima beans all the way.")
message3 = Message.create(post_id: post1.id, body: "Great, thanks!")
message4 = Message.create(post_id: post3.id, body: "I'm on my way but I'm running 5 minutes latitudee!")
message5 = Message.create(post_id: post3.id, body: "No worries - take your time!")

review1 = Rating.create(rating: 4, reviewer_id: user3.id, reviewed_id: user1.id)
review2 = Rating.create(rating: 5, reviewer_id: user1.id, reviewed_id: user3.id)
review3 = Rating.create(rating: 3, reviewer_id: user4.id, reviewed_id: user2.id)
review4 = Rating.create(rating: 5, reviewer_id: user2.id, reviewed_id: user4.id)
review5 = Rating.create(rating: 2, reviewer_id: user4.id, reviewed_id: user5.id)
review6 = Rating.create(rating: 5, reviewer_id: user5.id, reviewed_id: user4.id)

User.create!(first_name: "Sue", last_name: "Smith", email: "sue@gmail.com", password: "monkey")
