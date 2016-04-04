class Exchange < ActiveRecord::Base
  validates :claimant_id, presence: true
  validates :post_id, presence: true
  validates :completed, presence: true
  
  has_many :messages
  belongs_to :post
  belongs_to :claimant, class_name: "User", foreign_key: "claimant_id"
end
