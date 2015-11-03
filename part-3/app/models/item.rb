class Item < ActiveRecord::Base
  belongs_to :user, foreign_key: :owner_id
  has_many :bids
  has_many :users, through: :bids
end
