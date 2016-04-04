class Message < ActiveRecord::Base
  validates :post_id, presence: true
  validates :body, presence: true

  belongs_to :exchange
end
