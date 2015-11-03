class Bid < ActiveRecord::Base
  belongs_to :user, foreign_key: :bidder_id
  belongs_to :item
end
