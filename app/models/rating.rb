class Rating < ActiveRecord::Base
  has_one :reviewer, class_name: "User"
  has_one :reviewed, class_name: "User"
end
