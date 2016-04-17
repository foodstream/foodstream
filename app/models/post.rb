class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :details, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true
  validates :supplier_id, presence: true

  belongs_to :supplier, class_name: "User", foreign_key: "supplier_id"
  belongs_to :claimant, class_name: "User", foreign_key: "claimant_id"
  has_one :exchange
  has_attached_file :post_image
  validates_attachment_content_type :post_image, content_type: /\Aimage\/.*\Z/

  acts_as_mappable :default_units => :miles,
                     :default_formula => :sphere,
                     :distance_field_name => :distance,
                     :lat_column_name => :latitude,
                     :lng_column_name => :longitude

end
