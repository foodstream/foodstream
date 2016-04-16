class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :details, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true
  validates :supplier_id, presence: true

  belongs_to :supplier, class_name: "User", foreign_key: "supplier_id"
  belongs_to :claimant, class_name: "User", foreign_key: "claimant_id"
  has_one :exchange
  belongs_to :location
  has_attached_file :post_image
  validates_attachment_content_type :post_image, content_type: /\Aimage\/.*\Z/
  # validates_attachment_file_name :post_image, matches: /img[0-9]+.+/

  acts_as_mappable :default_units => :miles,
                     :default_formula => :sphere,
                     :distance_field_name => :distance,
                     :lat_column_name => :latitude,
                     :lng_column_name => :longitude

end
