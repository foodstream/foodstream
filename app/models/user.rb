class User < ActiveRecord::Base
  validates :password, presence: true, on: :create
  validates :email, presence: true, uniqueness: true
  validates_uniqueness_of :token, :allow_blank => true, :allow_nil => true

  has_many :posts, class_name: "Post", foreign_key: "supplier_id"
  has_many :posts, class_name: "Post", foreign_key: "claimant_id"
  has_many :locations
  has_many :ratings, class_name: "Rating", foreign_key: "reviewer_id"
  has_many :ratings, class_name: "Rating", foreign_key: "reviewed_id"

  has_secure_password

  def generate_token
    update_attribute(:token, SecureRandom.hex) if !token
  end
  def destroy_token
    update_attribute(:token, nil)
  end
  def average_rating

    # reviewedd  = User.find_by(user_id: 4)
    # average = Average.group(:user).average(:rating)
    # puts average[4]
    #
    #
    # values = Person.group(:family).maximum(:age) # Person belongs_to :family
    # puts values[drake]
    # # => 43
  end
end
