User.create!(name: "jon", password_digest: "password")
Item.create!(owner_id: 1, title: "lamp", description: "lamp", auction_start: "2015-04-01", auction_end: "2015-04-05", active: false)
Bid.create!(bidder_id: 1, item_id: 1, amount: 5.0)
