=begin
Use hashes with symbols to represent the following scenario:
 You are the owner of a store that sells items (you decide what specifically). Each item has various properties such as color, price, etc.
Represent 3 items using hashes. Each hash should have the same keys with different values.
Be sure to use symbols for the keys. Try creating hashes using both types of hash symbol syntaxes. (Ruby syntax {:a => 123} vs. “JavaScript” syntax {a: 123}).
=end

mochi = { section: "frozen", size: "12 pieces", price: 5.50, in_stock: true }
green_tea = { section: "refrigerated", size: "16 oz", price: 2, in_stock: true }
rice = { section: "grocery", size: "10 pound bag", price: 30, in_stock: true }

=begin
Exercise: Rewrite your store items using a class instead of a hash.
Choose which attributes should have “reader” methods and which attributes should have “writer” methods.
Create an instance from your store item class. Use puts statements to print the 3 attributes individually to the terminal.
Exercise:
Replace your “reader” and “writer” methods using the attr_reader and attr_writer shortcuts!
=end
class Item
  attr_reader :section, :size, :price, :in_stock

  def initialize(input_section, input_size, input_price, input_in_stock)
    @section = input_section
    @size = input_size
    @price = input_price
    @in_stock = input_in_stock
  end
end

mochi = Item.new("frozen", "12 pieces", 5.50, true)
