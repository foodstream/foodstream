class User < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true
  validates :email, presence: true, uniqueness: true
  validates :token, uniqueness: true

  has_many :posts, class_name: "Post", foreign_key: "supplier_id"
  has_many :exchanges, class_name: "Exchange", foreign_key: "claimant_id"
  has_many :locations
  has_many :ratings

  has_secure_password


  def generate_token
    self.token = SecureRandom.hex if token.blank?
  end

  def destroy_token
    self.token = nil
  end
end
