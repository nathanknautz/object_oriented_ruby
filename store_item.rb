car_1 = {make: "toyota", model: "camry", year: 2012}
car_2 = {make: "jeep", model: "liberty", year: 2012}
car_3 = {make: "tesla", model: "model-c",year: 2017}
car_4 = {:make => "ford", :model => "mustang", :year => 2000}


class Car 

  def initialize(input_make, input_model, input_year)
    @make = input_make
    @model = input_model
    @year = input_year
  end 

  def make
    @make 
  end 

  def model
    @model 
  end 

  def year
    @year 
  end 

  def make=(new_make)
    @make = new_make 
  end 

  def model=(new_model)
    @model = new_model
  end 

  def year=(new_year)
    @year = new_year
  end 

end 

car = Car.new("Jeep", "Liberty", 2012)

puts car.make
puts car.model 
puts car.year 

car.make = "Chevrolet"
car.model = "Corvette"
car.year = 2018

puts car.make 
puts car.model 
puts car.year 
