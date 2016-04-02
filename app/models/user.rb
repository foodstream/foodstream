class User < ActiveRecord::Base
  has_many :posts
  has_many :exchanges
  has_many :locations
  has_many :ratings
end
