class Post < ActiveRecord::Base
  belongs_to :supplier, class_name: "User", foreign_key: "supplier_id"
  belongs_to :claimant, class_name: "User", foreign_key: "claimant_id"
  has_one :exchange
  belongs_to :location

  validates :title, presence: true
  validates :details, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true
  validates :supplier_id, presence: true
  validates :location_id, presence: true

end
