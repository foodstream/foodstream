require 'test_helper'

class ExchangeTest < ActiveSupport::TestCase
  test "exchange accesses supplier" do

   user1 = User.create!(first_name: "Sam", last_name: "Smith", email: "sam@sam.com", password: "monkey")
   user2 = User.create!(first_name: "Ginger", last_name: "Griffith", email: "ginger@ginger.com", password: "monkey")
   location = Location.create!
   post1 = Post.create!(title: "Veggies", details: "Yum", supplier_id: user1.id, start_at: "2013-11-22 2:35PM", end_at: "2013-11-26 2:35PM", location_id: location.id)
   exchange1 = Exchange.create!(post_id: post1.id, claimant_id: user2.id)
   assert_equal exchange1.claimant_id, Exchange.where(claimant_id: user2.id).first.claimant_id
 end
  # test "the truth" do
  #   assert true
  # end
end
