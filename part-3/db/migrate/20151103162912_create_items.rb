class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :owner_id
      t.string :title, null: false
      t.string :description, null: false
      t.string :auction_start
      t.string :auction_end
      t.boolean :active

      t.timestamps(null: false)
    end
  end
end
