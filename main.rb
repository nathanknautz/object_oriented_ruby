require "./food.rb"
require "./buying.rb"
require "./store_item.rb"

food = StoreFront::Food.new(type: "food", price: 10, weight: "4 lbs", shelf_life: "10 yrs")
p food.shelf_life
food.purchase
food.cost
food.healthy

item = StoreFront::Item.new(type: "candy", price: 5, weight: "1 lb")
item.healthy