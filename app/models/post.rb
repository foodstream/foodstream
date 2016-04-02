class Post < ActiveRecord::Base
  has_one :exchange
  belongs_to :supplier, class_name: "User"
  has_one :location
end
