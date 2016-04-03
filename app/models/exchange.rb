class Exchange < ActiveRecord::Base
  has_many :messages
  belongs_to :post
  belongs_to :claimant, class_name: "User", foreign_key: "claimant_id"
end
