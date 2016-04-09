require 'test_helper'
require 'byebug'

class PostTest < ActiveSupport::TestCase
  test "post belongs to a supplier" do
    supplier1 = User.create!(first_name: "Bob", last_name: "Biggins", email: "bob@bob.com", password: "password")
    location = Location.new(latitude: "35.99599080000001", longitude: "78.90235000000001", address_string: "300 W Main St, Durham, NC 27701, USA")
    location.save
    post = Post.create!(title: "Produce from Weaverstreet", details: "Fruits and veggies", supplier_id: supplier1.id, start_at: "2013-11-22 2:35PM", end_at: "2013-11-26 2:35PM", location_id: location.id)
    assert_equal post.title, Post.where(supplier_id: supplier1.id).first.title
  end

  test "post location set from params" do
    supplier1 = User.create!(first_name: "Bob", last_name: "Biggins", email: "bob@bob.com", password: "password")
    post1 = Post.create!(title: "Canned goods", details: "300 cans of beans", start_at: "2013-11-22 2:25PM", end_at: "2013-11-29 2:25PM", supplier_id: supplier1.id, claimed: false, completed: false, claimant_id: nil, latitude: "35.99599080000001", longitude: "78.90235000000001", address_string: "300 W Main St, Durham, NC 27701, USA")

    location = Location.new(post1.latitude, post1.longitude, post1.address_string)
    location.save
    post1.location_id = location.id

    assert_equal location.latitude, "35.99599080000001"
  end


end
