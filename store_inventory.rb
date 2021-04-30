module StoreInventory
  def sell_item(amount)
    @quantity -= amount
  end
end