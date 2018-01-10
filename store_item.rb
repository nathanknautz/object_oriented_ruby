car_1 = {make: "toyota", model: "camry", year: 2012}
car_2 = {make: "jeep", model: "liberty", year: 2012}
car_3 = {make: "tesla", model: "model-c",year: 2017}
car_4 = {:make => "ford", :model => "mustang", :year => 2000}


class Item 
  attr_reader :type, :price, :weight 
  attr_writer :type, :price, :weight
  
  def initialize(input_options)
    @type = input_options[:type]
    @price = input_options[:price]
    @weight = input_options[:weight]
  end 

end 

class Food < Item
  attr_reader :shelf_life
  def initialize(input_options)
    super 
    @shelf_life = input_options[:shelf_life]
  end 

end 

food = Food.new(type: "food", price: 10, weight: "4 lbs", shelf_life: "10 yrs")
p food.shelf_life
