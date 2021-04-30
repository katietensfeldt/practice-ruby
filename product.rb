require "./store_inventory.rb"

class Product
  include StoreInventory

  attr_reader :item, :color, :price, :quantity
  attr_writer :price, :quantity

  def initialize(options_hash)
    @item = options_hash[:item]
    @color = options_hash[:color]
    @price = options_hash[:price]
    @quantity = options_hash[:quantity] || 15
  end

  def print_info
    puts "I sell #{color} #{item}s at $#{price} each"
  end
end
