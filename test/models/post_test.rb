require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "post belongs to a supplier" do
    supplier1 = User.create!(first_name: "Bob", email: "bob@bob.com")
    post = Post.create!(title: "Produce from Weaverstreet", details: "Fruits and veggies", supplier_id: supplier1.id)
    assert_equal post.title, Post.where(supplier_id: supplier1.id).first.title
  end
  # test "the truth" do
  #   assert true
  # end


end
