require 'test_helper'

class ExchangeTest < ActiveSupport::TestCase
  test "exchange accesses supplier" do

   user1 = User.create!(first_name: "Sam", email: "sam@sam.com", password: "monkey")
   user2 = User.create!(first_name: "Ginger", email: "ginger@ginger.com", password: "monkey")
   post1 = Post.create!(title: "Veggies", details: "Yum", supplier_id: user1.id)
   exchange1 = Exchange.create!(post_id: post1.id, claimant_id: user2.id)
   assert_equal exchange1.claimant_id, Exchange.where(claimant_id: user2.id).first.claimant_id
 end
  # test "the truth" do
  #   assert true
  # end
end
