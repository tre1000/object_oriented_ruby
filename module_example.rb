module VehicleDoable
  attr_reader :speed, :direction

  def initialize(input_options)
    @speed = input_options[:speed] || 0
    @direction = input_options[:direction] || "north"
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

class Car
  include VehicleDoable

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  include VehicleDoable

  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new(speed: 100, direction: "South")
car = Car.new({})

p car.speed
p car.direction

p bike.speed
p bike.direction

bike.ring_bell
car.honk_horn
