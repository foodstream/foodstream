class Rating < ActiveRecord::Base
  validates :rating, presence: true
  validates :reviewer_id, presence: true
  validates :reviewed_id, presence: true

  belongs_to :reviewer, class_name: "User", foreign_key: "reviewer_id"
  belongs_to :reviewed, class_name: "User", foreign_key: "reviewed_id"
end
