require 'test_helper'
require 'byebug'

class ExchangeTest < ActiveSupport::TestCase
  test "exchange accesses supplier" do
    user1 = User.create!(first_name: "Sam", email: "sam@sam.com")
    user2 = User.create!(first_name: "Ginger", email: "ginger@ginger.com")
    post1 = Post.create!(title: "Veggies", details: "Yum", user_id: user1.id)
    exchange1 = Exchange.create!(post_id: post1.id, claimed: true, claimant_id: user2.id)
byebug
    assert_equal exchange1.claimant_id, Exchange.where(claimant_id: user2.id).first.claimant_id
  end
end
