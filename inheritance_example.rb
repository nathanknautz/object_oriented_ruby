class Vehicle
  attr_reader :speed, :direction
  def initialize()
    @speed = 0
    @direction = "north"
  end 

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

end 

class Car < Vehicle
  
  attr_reader :make, :model, :color
  def initialize(input_data)
    super()
    @make = input_data[:make]
    @model = input_data[:model]
    @color = input_data[:color]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end

end

class Bike < Vehicle
  
  attr_reader :type, :color, :weight
  def initialize(input_data)
    super()
    @speed = input_data[:speed]
    @type = input_data[:type]
    @color = input_data[:color]
    @weight = input_data[:weight]
  end 

  def ring_bell
    puts "Ring ring!"
  end

end



car = Car.new(make: "toyota", model: "camry", color: "blue")
p car.direction

bike = Bike.new(speed: 10,type: "hybrid", color: "blue", weight: "20 lbs")
p bike.direction
p bike.speed

