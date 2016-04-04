require 'test_helper'
require 'byebug'

class PostTest < ActiveSupport::TestCase
  test "post belongs to a supplier" do
    supplier1 = User.create!(first_name: "Bob", last_name: "Biggins", email: "bob@bob.com", password: "password")
    location = Location.create!
    post = Post.create!(title: "Produce from Weaverstreet", details: "Fruits and veggies", supplier_id: supplier1.id, start_at: "2013-11-22 2:35PM", end_at: "2013-11-26 2:35PM", location_id: location.id)
    assert_equal post.title, Post.where(supplier_id: supplier1.id).first.title
  end
  # test "the truth" do
  #   assert true
  # end


end
