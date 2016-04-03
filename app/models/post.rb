class Post < ActiveRecord::Base
  has_one :exchange
  belongs_to :user
  has_one :location
end
