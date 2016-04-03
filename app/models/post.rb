class Post < ActiveRecord::Base
  belongs_to :supplier, class_name: "User", foreign_key: "supplier_id"
  has_one :exchange
  has_one :location
end
