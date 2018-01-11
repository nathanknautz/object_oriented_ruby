module Driving

  def brake
    @speed = 0 
  end    

  def turn(new_direction)
    @direction = new_direction
  end

  def accelerate
    @speed += 10

  end 

end

class Vehicle
  include Driving
  def initialize
    @speed = 0
    @direction = 'north'
  end

end

class Car < Vehicle

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle

  def ring_bell
    puts "Ring ring!"
  end
end
 
 car = Car.new 
 p car.brake 
 p car.accelerate
 p car.turn("south")
 p car
  
            
