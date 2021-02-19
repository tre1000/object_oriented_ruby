require "./store_item"
require "./store_perishable"
# require_relative "store_item"
# require_relative "store_perishable"
# any of the above work.

mochi = Item.new(section: "frozen", size: "12 pieces", price: 5.50, in_stock: true)
green_tea = Item.new(section: "refrigerated", size: "16 oz", price: 1.50, in_stock: true)
rice = Item.new(section: "grocery", size: "10 pounds", price: 30, in_stock: true)

milk = Perishable.new(section: "refrigerated", size: "1 gal", price: 4, in_stock: true, shelf_life: "12 days")

puts milk.section
puts milk.shelf_life
puts mochi.section
puts mochi.size
