# Using hashes with symbols:

# # Ruby syntax:
# item_1 = {:item => "coffee_mug", :color => "pink", :price => 8, :quantity => 15}
# item_2 = {:item => "coaster", :color => "green", :price => 2, :quantity => 20}
# item_3 = {:item => "chap stick", :color => "red", :price => 1, :quantity => 42}

# JavaScript syntax:
# coffee_mug = {color: "pink", price: 8, quantity: 15}
# coaster = {color: "green", price: 2, quantity: 20}
# chap_stick = {color: "red", price: 1, quantity: 42} 

# puts "In this store, I sell #{coffee_mug[:coaster]}"

class Product

  attr_reader :item, :color, :price
  attr_writer :price

  def initialize(options_hash)
    @item = options_hash[:item]
    @color = options_hash[:color]
    @price = options_hash[:price]
  end

  def print_info
    puts "I sell #{color} #{item}s at $#{price} each"
  end

end

item1 = Product.new({:item => "coffee mug", :color => "pink", :price => 8})
item1.print_info
item1.price = 9
p item1.price
item1.print_info