
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongitudeside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Uncomment seeds if test data needed

# user1 = User.create(first_name: "Bob", last_name: "Ingles", password: "password", email: "foodstreamapp@gmail.com", organization: "Ingles grocery store", description: "Ingles manager", latitude: "35.993008", longitude: "-78.904495", address_string: "Ingles", verified: true)
# user10 = User.create(first_name: "Byron", last_name: "Wall", password: "password", email: "byronssupersweetdevacct@gmail.com", organization: "foodstream", description: "Front End Wizard", latitude: "35.993008", longitude: "-78.904495", address_string: "The Iron Yard", verified: true)
# user11 = User.create(first_name: "Tori", last_name: "Hedden", password: "password", email: "tori.hedden@gmail.com", organization: "foodstream", description: "Front End Wizard", latitude: "35.993008", longitude: "-78.904495", address_string: "The Iron Yard", verified: true)
# user12 = User.create(first_name: "Mike", last_name: "Crane", password: "password", email: "mike.c0321@gmail.com", organization: "foodstream", description: "Front End Wizard", latitude: "35.993008", longitude: "-78.904495", address_string: "The Iron Yard", verified: true)
# user13 = User.create(first_name: "Marcia", last_name: "Corprew", password: "password", email: "mcorprew@gmail.com", organization: "foodstream", description: "Rails Wizard", latitude: "35.993008", longitude: "-78.904495", address_string: "The Iron Yard", verified: true)
# user14 = User.create(first_name: "Molly", last_name: "Gehring", password: "password", email: "gehring.mg@gmail.com", organization: "foodstream", description: "Rails Wizard", latitude: "35.993008", longitude: "-78.904495", address_string: "The Iron Yard", verified: true)
#
#
# post1 = Post.create(title: "Canned goods", details: "300 cans of beans", start_at: "2013-11-22 2:25PM", end_at: "2013-11-29 2:25PM", supplier_id: user10.id, claimed: false, completed: false, claimant_id: nil, latitude: "35.99599080000001", longitude: "78.90235000000001", address_string: "300 W Main St, Durham, NC 27701, USA")
# post2 = Post.create(title: "Fresh produce", details: "12 lbs of arugula", start_at: "2014-10-12 12:25PM", end_at: "2014-10-13 2:25PM", supplier_id: user11.id, claimed: false, completed: false, claimant_id: nil, latitude: "35.99599080000001", longitude: "78.90235000000001", address_string: "300 W Main St, Durham, NC 27701, USA")
# post3 = Post.create(title: "Catering leftovers", details: "3 trays of mashed potatoes and 2 trays of brisket", start_at: "2015-3-12 2:25PM", end_at: "2015-3-12 3:25PM", supplier_id: user12.id, claimed: false, completed: true, claimant_id: 1, latitude: "35.60614", longitude: "82.55325540000001", address_string: "200 Merrimon Ave, Asheville, NC 28801")
# post4 = Post.create(title: "Misc. grocieries", details: "18 boxes of spaghetti", start_at: "2016-5-12 1:25PM", end_at: "2016-6-12 9:25PM", supplier_id: user13.id, claimed: false, completed: false, claimant_id: nil, latitude: "35.60614", longitude: "82.55325540000001", address_string: "200 Merrimon Ave, Asheville, NC 28801")
# post5 = Post.create(title: "some greens and whatnot", details: "we've got a lot of kale thats tore up but would be...", start_at: "2016-10-04 12:30:00", end_at: "2016-11-04 13:00:00", supplier_id: user14.id, created_at: "2016-04-10 16:22:43", updated_at: "2016-04-10 16:22:43", claimed: nil, completed: nil, claimant_id: nil, latitude: "35.9112313", longitude: "-79.07705220000003", address_string: "800 W Weaver St, Carrboro, NC 27510, USA")
# post6 = Post.create(title: "bananas", details: "nanans", start_at: "2016-11-04 13:00:00", end_at: "2016-12-04 13:00:00", supplier_id: user10.id, created_at: "2016-04-10 16:30:34", updated_at: "2016-04-10 16:30:34", claimed: nil, completed: nil, claimant_id: nil, latitude: "35.9112313", longitude: "-79.07705220000003", address_string: "800 W Weaver St, Carrboro, NC 27510, USA")
# post7 = Post.create(title: "tomoatoes, come get 'em", details: "tomaotoes, yall forreal", start_at: "2016-11-04 16:00:00", end_at: "2016-12-04 16:00:00", supplier_id: user11.id, created_at: "2016-04-10 16:33:09", updated_at: "2016-04-10 16:33:09", claimed: nil, completed: nil, claimant_id: nil, latitude: "35.8806338", longitude: "-79.06633979999998", address_string: "700 Market St, Chapel Hill, NC 27516, USA")
# post8 = Post.create(title: "fruits'n'fruits", details: "apples, pears, etc", start_at: "2016-10-04 13:00:00", end_at: "2016-11-04 13:30:00", supplier_id: user12.id, created_at: "2016-04-10 16:35:55", updated_at: "2016-04-10 16:35:55", claimed: nil, completed: nil, claimant_id: nil, latitude: "35.8806338", longitude: "-79.06633979999998", address_string: "700 Market St, Chapel Hill, NC 27516, USA")
# post9 = Post.create(title: "potatoes", details: "scarred but good", start_at: "2016-10-04 14:00:00", end_at: "2016-11-04 17:00:00", supplier_id: user13.id, created_at: "2016-04-10 16:38:42", updated_at: "2016-04-10 16:38:42", claimed: nil, completed: nil, claimant_id: nil, latitude: "36.0735898", longitude: "-79.0997367", address_string: "228 S Churton St, Hillsborough, NC 27278, USA")
# post10 = Post.create(title: "mangoes", details: "gooey but good", start_at: "2016-10-04 13:00:00", end_at: "2016-10-04 16:00:00", supplier_id: user14.id, created_at: "2016-04-10 16:41:06", updated_at: "2016-04-10 16:41:06", claimed: nil, completed: nil, claimant_id: nil, latitude: "36.0735898", longitude: "-79.0997367", address_string: "228 S Churton St, Hillsborough, NC 27278, USA")
# post11 = Post.create(title: "Tots", details: "Napolean swears by 'em", start_at: "2016-10-04 13:00:00", end_at: "2016-10-04 16:00:00", supplier_id: user10.id, created_at: "2016-04-10 16:41:06", updated_at: "2016-04-10 16:41:06", claimed: nil, completed: nil, claimant_id: nil, latitude: "36.0735898", longitude: "-79.0997367", address_string: "228 S Churton St, Hillsborough, NC 27278, USA")
# post12 = Post.create(title: "Pancit", details: "My Filipino fave food", start_at: "2016-10-04 13:00:00", end_at: "2016-10-04 16:00:00", supplier_id: user13.id, created_at: "2016-04-10 16:41:06", updated_at: "2016-04-10 16:41:06", claimed: nil, completed: nil, claimant_id: nil, latitude: "36.0735898", longitude: "-79.0997367", address_string: "228 S Churton St, Hillsborough, NC 27278, USA")
#
# message1 = Message.create(post_id: post1.id, body: "Can you tell me what kind of beans are being offered?", sender_id: 4)
# message2 = Message.create(post_id: post1.id, body: "Lima beans all the way.", sender_id: 1)
# message3 = Message.create(post_id: post1.id, body: "Great, thanks!", sender_id: 4)
# message4 = Message.create(post_id: post3.id, body: "I'm on my way but I'm running 5 minutes latitudee!", sender_id: 3)
# message5 = Message.create(post_id: post3.id, body: "No worries - take your time!", sender_id: 5)
#
# review1 = Rating.create(rating: 4, reviewer_id: user10.id, reviewed_id: user11.id)
# review2 = Rating.create(rating: 5, reviewer_id: user11.id, reviewed_id: user12.id)
# review3 = Rating.create(rating: 3, reviewer_id: user12.id, reviewed_id: user13.id)
# review4 = Rating.create(rating: 5, reviewer_id: user13.id, reviewed_id: user14.id)
# review5 = Rating.create(rating: 2, reviewer_id: user14.id, reviewed_id: user13.id)
# review6 = Rating.create(rating: 5, reviewer_id: user13.id, reviewed_id: user12.id)
# review7 = Rating.create(rating: 4, reviewer_id: user13.id, reviewed_id: user1.id)
# review8 = Rating.create(rating: 3, reviewer_id: user13.id, reviewed_id: user1.id)
# review9 = Rating.create(rating: 4, reviewer_id: user1.id, reviewed_id: user11.id)
# review10 = Rating.create(rating: 5, reviewer_id: user1.id, reviewed_id: user12.id)
