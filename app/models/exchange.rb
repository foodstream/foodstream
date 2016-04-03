class Exchange < ActiveRecord::Base
  has_many :messages
  belongs_to :post
  belongs_to :claimant, class_name: "User"
  alias_attribute :claimant_id, :user_id

end
