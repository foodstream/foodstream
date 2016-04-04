class Message < ActiveRecord::Base
  validates :exchange_id, presence: true
  validates :body, presence: true
  
  belongs_to :exchange
end
