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
  attr_writer :price, :in_stock

  def initialize(input_options)
    @section = input_options[:section]
    @size = input_options[:size]
    @price = input_options[:price]
    @in_stock = input_options[:in_stock]
  end

  def sale(percent_off)
    price_cut = @price * percent_off
    @price = @price - price_cut
  end

  def toggle_in_stock
    @in_stock = !@in_stock
  end
end

class Perishable < Item
  attr_reader :shelf_life

  def initialize(input_options)
    super
    @shelf_life = input_options[:shelf_life]
  end
end

mochi = Item.new(section: "frozen", size: "12 pieces", price: 5.50, in_stock: true)
green_tea = Item.new(section: "refrigerated", size: "16 oz", price: 1.50, in_stock: true)
rice = Item.new(section: "grocery", size: "10 pounds", price: 30, in_stock: true)

milk = Perishable.new(section: "refrigerated", size: "1 gal", price: 4, in_stock: true, shelf_life: "12 days")

puts milk.section
puts milk.shelf_life
