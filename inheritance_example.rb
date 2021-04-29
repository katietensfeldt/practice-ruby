class Vehicle
  attr_accessor :speed, :direction
  def initialize(options_hash)
    @speed = options_hash[:speed] || 0
    @direction = options_hash[:direction] || 'north'
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
  attr_accessor :make, :model
  def initialize(options_hash)
    super
    @fuel = options_hash[:fuel] || 10
    @make = options_hash[:make] || "Honda"
    @model = options_hash[:model] || "Fit"
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  attr_accessor :type, :hash
  def initialize(options_hash)
    super
    @type = options_hash[:type] || "Schwinn"
    @weight = options_hash[:weight] || 20
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new({})
bike = Bike.new({})

car.honk_horn
p car.brake
p car.turn('south')
p car.model

bike.ring_bell
p bike.brake
p bike.turn('east')
p bike.type
p bike.speed
p bike.accelerate
