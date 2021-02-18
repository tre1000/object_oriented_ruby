class Vehicle
  def initialize
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
  attr_reader :make, :model, :fuel

  def initialize
    super
    @make = "Pontiac"
    @model = "Firebird"
    @fuel = "Premium"
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def initialize
    super
    @type = "Mountain Bike"
    @weight = "20 pounds"
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new
bike = Bike.new

puts car.accelerate
puts bike.accelerate

puts car.brake
puts bike.brake

puts car.turn("South")
puts bike.turn("South")

car.honk_horn
bike.ring_bell

puts car.make
puts car.model
puts car.fuel
