class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :bidder_id, null: false
      t.integer :item_id, null: false
      t.string :amount, null: false

      t.timestamps(null: false)
    end
  end
end
