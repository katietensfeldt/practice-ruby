require "./product.rb"
require "./store_inventory.rb"

class Food < Product
  include StoreInventory

  def initialize(options_hash)
    super
    @shelf_life = options_hash[:shelf_life] || "2 weeks"
  end

  def print_info
    super
    puts "It has a shelf life of #{@shelf_life}"
  end
end