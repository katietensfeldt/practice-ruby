require "./food.rb"
require "./product.rb"

item1 = Product.new({:item => "coffee mug", :color => "pink", :price => 8})
item1.print_info
item1.price = 9
p item1.price
item1.print_info

item2 = Food.new({item: "coffee", color:"brown", price: 6, shelf_life: "3 weeks"})

item2.print_info
p item2.quantity

p item2.sell_item(2)

p item1.quantity
p item1.sell_item(3)