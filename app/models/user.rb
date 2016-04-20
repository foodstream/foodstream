class User < ActiveRecord::Base
  validates :password, presence: true, on: :create
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates_uniqueness_of :token, :allow_blank => true, :allow_nil => true

  before_save :generate_token

  has_many :posts, class_name: "Post", foreign_key: "supplier_id"
  has_many :posts, class_name: "Post", foreign_key: "claimant_id"
  has_many :ratings, class_name: "Rating", foreign_key: "reviewer_id"
  has_many :ratings, class_name: "Rating", foreign_key: "reviewed_id"
  accepts_nested_attributes_for :ratings, allow_destroy: true

  has_attached_file :profile_image
  validates_attachment_content_type :profile_image, content_type: /\Aimage\/.*\Z/

  has_secure_password


  def generate_token
    update_attribute(:token, SecureRandom.hex) if !token
  end

  def destroy_token
    update_attribute(:token, nil)
  end

  def generate_verification_key
    update_attribute(:verification_key, SecureRandom.hex) if !verification_key
    verification_key
  end

  def destroy_verification_key
    update_attribute(:verification_key, nil)
  end

  def average_rating
    Rating.where(reviewed_id: id).average(:rating).to_f.round(2)
  end
end
