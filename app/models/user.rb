class User < ActiveRecord::Base
  has_many :posts, class_name: "Post", foreign_key: "supplier_id"
  has_many :exchanges, class_name: "Exchange", foreign_key: "claimant_id"
  has_many :locations
  has_many :ratings
end
