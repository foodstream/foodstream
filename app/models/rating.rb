class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :reviewer, class_name: "User"
  alias_attribute :reviewer_id, :user_id

end
