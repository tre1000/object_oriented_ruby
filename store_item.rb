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