class Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
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
  def initialize
    super
    @fuel = 'full'
    @make = 'Honda'
    @model = 'Civic'
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def initialize 
    super
    @gears = 6
    @type = 'Mountain Bike'
    @weight = '7lbs.'
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new
bike = Bike.new

puts car.accelerate
puts bike.accelerate

puts car.honk_horn
puts bike.ring_bell

p bike