class User < ActiveRecord::Base
  has_many :items, foreign_key: :owner_id
  has_many :bids, foreign_key: :bidder_id
  has_many :items, through: :bids
end
