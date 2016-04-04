class Rating < ActiveRecord::Base
  validates :rating, presence: true
  validates :reviewer_id, presence: true
  validates :reviewed_id, presence: true
  
  has_one :reviewer, class_name: "User"
  has_one :reviewed, class_name: "User"
end
